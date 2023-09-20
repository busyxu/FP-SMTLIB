(declare-fun a_ack!249 () (_ BitVec 32))
(declare-fun b_ack!248 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!249 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!249)))
(assert (not (= #x00000001 a_ack!249)))
(assert (= #x00000002 a_ack!249))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!248) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!248) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!248) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!248)
          ((_ to_fp 11 53) b_ack!248))
  #xbe02c9758daf5cd0))

(check-sat)
(exit)
