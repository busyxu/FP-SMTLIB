(declare-fun a_ack!50 () (_ BitVec 32))
(declare-fun b_ack!48 () (_ BitVec 32))
(declare-fun c_ack!49 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!50 #x00000000)))
(assert (not (bvslt b_ack!48 a_ack!50)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!50 #x00000000)))
(assert (= #x00000000 a_ack!50))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!49) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x4040000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) c_ack!49)
                  ((_ to_fp 11 53) c_ack!49)))
  #x3ff0000000000000))

(check-sat)
(exit)
