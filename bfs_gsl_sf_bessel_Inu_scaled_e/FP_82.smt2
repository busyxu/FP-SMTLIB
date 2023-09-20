(declare-fun b_ack!1223 () (_ BitVec 64))
(declare-fun a_ack!1224 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1223) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1224) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!1223)
                          ((_ to_fp 11 53) b_ack!1223))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!1224)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1224)
                                   ((_ to_fp 11 53) a_ack!1224))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53) b_ack!1223))))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3ed965fea53d6e41))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x401921fb54442d18)
                       ((_ to_fp 11 53) a_ack!1224))
               ((_ to_fp 11 53) #x401921fb54442d18))
       ((_ to_fp 11 53) a_ack!1224)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!1224))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x401921fb54442d18)
                       ((_ to_fp 11 53) a_ack!1224))
               ((_ to_fp 11 53) a_ack!1224))
       ((_ to_fp 11 53) #x401921fb54442d18)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1223)
                    ((_ to_fp 11 53) a_ack!1224))
            ((_ to_fp 11 53) #x410428a2f98d7287))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53) a_ack!1224)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1223)
                           ((_ to_fp 11 53) a_ack!1224)))))
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
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53) a_ack!1224)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1223)
                           ((_ to_fp 11 53) a_ack!1224)))))
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
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53) a_ack!1224)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1223)
                           ((_ to_fp 11 53) a_ack!1224)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1224))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53) a_ack!1224)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x40862e42fefa39ef))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4028000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53) a_ack!1224)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1223)
                           ((_ to_fp 11 53) a_ack!1224)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfe0000000000000)
                                   ((_ to_fp 11 53) a_ack!1224))
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1223)
                                   ((_ to_fp 11 53) a_ack!1224)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.lt a!2 ((_ to_fp 11 53) #xc086232bdd7abcd2))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfb228d116378a3d)
                                   ((_ to_fp 11 53) a_ack!1224)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #xbfb228d116378a3d)
                 ((_ to_fp 11 53) a_ack!1224)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #xbfb228d116378a3d)
                                   ((_ to_fp 11 53) a_ack!1224)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #xbfb228d116378a3d)
                           ((_ to_fp 11 53) a_ack!1224)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
