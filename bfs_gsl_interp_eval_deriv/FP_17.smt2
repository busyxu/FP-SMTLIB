(declare-fun x1_ack!389 () (_ BitVec 64))
(declare-fun x0_ack!392 () (_ BitVec 64))
(declare-fun x2_ack!390 () (_ BitVec 64))
(declare-fun xx_ack!391 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!392) ((_ to_fp 11 53) x1_ack!389)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!389) ((_ to_fp 11 53) x2_ack!390)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!389)
                       ((_ to_fp 11 53) x0_ack!392))
               ((_ to_fp 11 53) x0_ack!392))
       ((_ to_fp 11 53) x1_ack!389)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!389)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!389)
                       ((_ to_fp 11 53) x0_ack!392)))
       ((_ to_fp 11 53) x0_ack!392)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!390)
                       ((_ to_fp 11 53) x1_ack!389))
               ((_ to_fp 11 53) x1_ack!389))
       ((_ to_fp 11 53) x2_ack!390)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!390)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!390)
                       ((_ to_fp 11 53) x1_ack!389)))
       ((_ to_fp 11 53) x1_ack!389)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!389)
                    ((_ to_fp 11 53) x0_ack!392))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!390)
                    ((_ to_fp 11 53) x1_ack!389))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!391) ((_ to_fp 11 53) x0_ack!392))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!391) ((_ to_fp 11 53) x2_ack!390))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!391) ((_ to_fp 11 53) x0_ack!392))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!391) ((_ to_fp 11 53) x1_ack!389))))

(check-sat)
(exit)
