(declare-fun a5_ack!228 () (_ BitVec 64))
(declare-fun a0_ack!229 () (_ BitVec 64))
(declare-fun a1_ack!227 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!228) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!229))
                           ((_ to_fp 11 53) a5_ack!228)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!227))
                           ((_ to_fp 11 53) a5_ack!228)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1)
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
