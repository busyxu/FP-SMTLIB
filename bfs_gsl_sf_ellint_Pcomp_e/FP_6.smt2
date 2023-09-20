(declare-fun a_ack!77 () (_ BitVec 64))
(declare-fun c_ack!76 () (_ BitVec 32))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!77)
                     ((_ to_fp 11 53) a_ack!77))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!77)
                                   ((_ to_fp 11 53) a_ack!77)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!77)
                           ((_ to_fp 11 53) a_ack!77)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!77)
                                   ((_ to_fp 11 53) a_ack!77))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!77)
                 ((_ to_fp 11 53) a_ack!77)))))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand c_ack!76 #x00000007)))
       #x0000000000000011))
(assert (let ((a!1 (fp.lt (fp.sub roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!77)
                                  ((_ to_fp 11 53) a_ack!77)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!77)
                                   ((_ to_fp 11 53) a_ack!77))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x0034000000000000))))

(check-sat)
(exit)
