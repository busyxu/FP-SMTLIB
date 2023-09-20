(declare-fun b_ack!645 () (_ BitVec 64))
(declare-fun a_ack!646 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!645) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!646) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!645)
                          ((_ to_fp 11 53) b_ack!645))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!646)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!646)
                                   ((_ to_fp 11 53) a_ack!646))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!645)
                                   ((_ to_fp 11 53) b_ack!645))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x401921fb54442d18)
                       ((_ to_fp 11 53) a_ack!646))
               ((_ to_fp 11 53) #x401921fb54442d18))
       ((_ to_fp 11 53) a_ack!646)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!646))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x401921fb54442d18)
                       ((_ to_fp 11 53) a_ack!646))
               ((_ to_fp 11 53) a_ack!646))
       ((_ to_fp 11 53) #x401921fb54442d18)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!645)
                    ((_ to_fp 11 53) a_ack!646))
            ((_ to_fp 11 53) #x410428a2f98d7287))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!645)
                                   ((_ to_fp 11 53) a_ack!646)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!645)
                           ((_ to_fp 11 53) a_ack!646)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!645)
                                   ((_ to_fp 11 53) a_ack!646)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!645)
                           ((_ to_fp 11 53) a_ack!646)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1)))))

(check-sat)
(exit)
