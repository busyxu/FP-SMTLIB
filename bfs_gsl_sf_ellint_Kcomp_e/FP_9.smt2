(declare-fun a_ack!76 () (_ BitVec 64))
(declare-fun b_ack!75 () (_ BitVec 32))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!76)
                     ((_ to_fp 11 53) a_ack!76))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!76)
                     ((_ to_fp 11 53) a_ack!76))
             ((_ to_fp 11 53) #x3feffffff8000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!76)
                                   ((_ to_fp 11 53) a_ack!76)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!76)
                           ((_ to_fp 11 53) a_ack!76)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!76)
                                   ((_ to_fp 11 53) a_ack!76))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!76)
                 ((_ to_fp 11 53) a_ack!76)))))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand b_ack!75 #x00000007)))
       #x0000000000000011))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!76)
                                  ((_ to_fp 11 53) a_ack!76)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!76)
                                   ((_ to_fp 11 53) a_ack!76))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x0034000000000000)))))

(check-sat)
(exit)
