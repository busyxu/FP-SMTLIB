(declare-fun a_ack!116 () (_ BitVec 64))
(declare-fun c_ack!114 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun d_ack!115 () (_ BitVec 64))
(declare-fun b_ack!113 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!116) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) c_ack!114) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!113)
                  ((_ to_fp 11 53) c_ack!114)))
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) d_ack!115)
                  ((_ to_fp 11 53) a_ack!116)))))

(check-sat)
(exit)
