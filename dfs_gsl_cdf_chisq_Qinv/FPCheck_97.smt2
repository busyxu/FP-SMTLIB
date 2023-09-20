(declare-fun x_ack!288 () (_ BitVec 64))
(declare-fun nu_ack!287 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!288) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!288) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!288) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (fp.gt ((_ to_fp 11 53) x_ack!288) ((_ to_fp 11 53) #x3fee666666666666)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!287)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!287)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) nu_ack!287)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) nu_ack!287)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) nu_ack!287)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3f947ae147ae147b)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu_ack!287)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!287)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #xbf3fbdf153d2eadd))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) nu_ack!287)
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu_ack!287)
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #xbf3fbdf153d2eadd))
                   ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) nu_ack!287)
                 ((_ to_fp 11 53) #x4000000000000000)))))
(assert (FPCHECK_FADD_OVERFLOW
  #x3f4ff0a5d7d0b01e
  (fp.mul roundNearestTiesToEven
          (fp.div roundNearestTiesToEven
                  ((_ to_fp 11 53) nu_ack!287)
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #xbf3fbdf153d2eadd))))

(check-sat)
(exit)
