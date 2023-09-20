(declare-fun a_ack!53 () (_ BitVec 64))
(declare-fun c_ack!52 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!53)
                     ((_ to_fp 11 53) a_ack!53))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!53)
                                   ((_ to_fp 11 53) a_ack!53)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!53)
                           ((_ to_fp 11 53) a_ack!53)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!53)
                                   ((_ to_fp 11 53) a_ack!53))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!53)
                 ((_ to_fp 11 53) a_ack!53)))))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!52 #x00000007)))
       #x0000000000000011))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!53)
                                  ((_ to_fp 11 53) a_ack!53)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!53)
                                   ((_ to_fp 11 53) a_ack!53))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x0034000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!53)
                                   ((_ to_fp 11 53) a_ack!53)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x0034000000000000)))))
(assert (let ((a!1 (fp.gt ((_ to_fp 11 53) #x0000000000000000)
                  (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!53)
                                  ((_ to_fp 11 53) a_ack!53))))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!53)
                                  ((_ to_fp 11 53) a_ack!53)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x0000000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!53)
                  ((_ to_fp 11 53) a_ack!53)))))

(check-sat)
(exit)
