(declare-fun a_ack!286 () (_ BitVec 64))
(declare-fun b_ack!285 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!285) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!285) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) b_ack!285)
        (fp.mul roundNearestTiesToEven
                ((_ to_fp 11 53) #x3fe0000000000000)
                ((_ to_fp 11 53) a_ack!286))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!286) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!285)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!286))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!285)
                                  ((_ to_fp 11 53) a_ack!286))
                          ((_ to_fp 11 53) a_ack!286))
                  ((_ to_fp 11 53) b_ack!285))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!285)
                                  ((_ to_fp 11 53) a_ack!286)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!285)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!285)
                       ((_ to_fp 11 53) a_ack!286)))
       ((_ to_fp 11 53) a_ack!286)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (CF_log (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!285)
                  ((_ to_fp 11 53) a_ack!286)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!285)
          ((_ to_fp 11 53) a_ack!286))))

(check-sat)
(exit)
