(declare-fun a_ack!80 () (_ BitVec 64))
(declare-fun b_ack!79 () (_ BitVec 32))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!80)
                     ((_ to_fp 11 53) a_ack!80))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!80)
                     ((_ to_fp 11 53) a_ack!80))
             ((_ to_fp 11 53) #x3feffffff8000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!80)
                                   ((_ to_fp 11 53) a_ack!80)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!80)
                           ((_ to_fp 11 53) a_ack!80)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!80)
                                   ((_ to_fp 11 53) a_ack!80))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!80)
                 ((_ to_fp 11 53) a_ack!80)))))
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand b_ack!79 #x00000007)))
       #x0000000000000011))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!80)
                       ((_ to_fp 11 53) a_ack!80)))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
