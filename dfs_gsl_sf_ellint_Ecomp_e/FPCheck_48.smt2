(declare-fun a_ack!174 () (_ BitVec 64))
(declare-fun b_ack!173 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!174)
                     ((_ to_fp 11 53) a_ack!174))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!174)
                     ((_ to_fp 11 53) a_ack!174))
             ((_ to_fp 11 53) #x3feffffff8000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!174)
                                   ((_ to_fp 11 53) a_ack!174)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!174)
                           ((_ to_fp 11 53) a_ack!174)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!174)
                                   ((_ to_fp 11 53) a_ack!174))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!174)
                 ((_ to_fp 11 53) a_ack!174)))))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand b_ack!173 #x00000007)))
       #x0000000000000011))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!174)
                                  ((_ to_fp 11 53) a_ack!174)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!174)
                                   ((_ to_fp 11 53) a_ack!174))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x0034000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!174)
                                   ((_ to_fp 11 53) a_ack!174)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x0034000000000000)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) #x0000000000000000)
                  (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!174)
                                  ((_ to_fp 11 53) a_ack!174))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!174)
                                  ((_ to_fp 11 53) a_ack!174)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!174)
                                   ((_ to_fp 11 53) a_ack!174))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (FPCHECK_FSUB_UNDERFLOW #x4000000000000000 a!3)))))

(check-sat)
(exit)
