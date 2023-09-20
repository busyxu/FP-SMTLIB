(declare-fun b_ack!726 () (_ BitVec 64))
(declare-fun a_ack!727 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!726) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!727 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!726) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!727)))
(assert (not (= #x00000001 a_ack!727)))
(assert (not (= #x00000002 a_ack!727)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!726)
                       ((_ to_fp 11 53) b_ack!726))
               ((_ to_fp 11 53) b_ack!726))
       ((_ to_fp 11 53) b_ack!726)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!726))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!726)
                       ((_ to_fp 11 53) b_ack!726))
               ((_ to_fp 11 53) b_ack!726))
       ((_ to_fp 11 53) b_ack!726)))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4024000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) roundNearestTiesToEven a_ack!727)
          ((_ to_fp 11 53) #x3ff8000000000000))))

(check-sat)
(exit)
