(declare-fun a5_ack!387 () (_ BitVec 64))
(declare-fun a0_ack!388 () (_ BitVec 64))
(declare-fun a1_ack!386 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a5_ack!387) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a0_ack!388))
                           ((_ to_fp 11 53) a5_ack!387)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!386))
                           ((_ to_fp 11 53) a5_ack!387)))))
  (not (fp.eq (fp.add roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)
              ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!386))
                           ((_ to_fp 11 53) a5_ack!387)))))
(let ((a!2 (fp.lt ((_ to_fp 11 53) #x3ff0000000000000)
                  (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1)
                          ((_ to_fp 11 53) #x4000000000000000)))))
  (not a!2))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a1_ack!386))
                           ((_ to_fp 11 53) a5_ack!387)))))
  (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
         (fp.mul roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4000000000000000)))))

(check-sat)
(exit)
