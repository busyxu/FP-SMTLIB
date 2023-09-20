(declare-fun b_ack!369 () (_ BitVec 64))
(declare-fun a_ack!371 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!370 () (_ BitVec 64))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!369) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (bvslt a_ack!371 #x00000000)))
(assert (not (= #x00000000 a_ack!371)))
(assert (not (= #x00000001 a_ack!371)))
(assert (not (= #x00000002 a_ack!371)))
(assert (= #x00000003 a_ack!371))
(assert (fp.eq ((_ to_fp 11 53) b_ack!369) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff5555555555555)
          ((_ to_fp 11 53) c_ack!370))
  c_ack!370))

(check-sat)
(exit)
