(declare-fun a_ack!352 () (_ BitVec 64))
(declare-fun b_ack!351 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!352) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!351) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!351) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!351) ((_ to_fp 11 53) #x4034000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!351)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!352))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!352) ((_ to_fp 11 53) #x4024000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!351)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!352))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!352))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!351)
                                  ((_ to_fp 11 53) a_ack!352))
                          ((_ to_fp 11 53) a_ack!352))
                  ((_ to_fp 11 53) b_ack!351))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!351)
                                  ((_ to_fp 11 53) a_ack!352)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (fp.eq (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!351)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!351)
                       ((_ to_fp 11 53) a_ack!352)))
       ((_ to_fp 11 53) a_ack!352)))
(assert (FPCHECK_FSUB_ACCURACY
  (CF_log (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!351)
                  ((_ to_fp 11 53) a_ack!352)))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!351)
          ((_ to_fp 11 53) a_ack!352))))

(check-sat)
(exit)
