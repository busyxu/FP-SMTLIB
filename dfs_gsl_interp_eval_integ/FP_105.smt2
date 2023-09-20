(declare-fun x1_ack!6336 () (_ BitVec 64))
(declare-fun x0_ack!6340 () (_ BitVec 64))
(declare-fun x2_ack!6337 () (_ BitVec 64))
(declare-fun b_ack!6339 () (_ BitVec 64))
(declare-fun a_ack!6338 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6340) ((_ to_fp 11 53) x1_ack!6336)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6336) ((_ to_fp 11 53) x2_ack!6337)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6336)
                       ((_ to_fp 11 53) x0_ack!6340))
               ((_ to_fp 11 53) x0_ack!6340))
       ((_ to_fp 11 53) x1_ack!6336)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6336)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6336)
                       ((_ to_fp 11 53) x0_ack!6340)))
       ((_ to_fp 11 53) x0_ack!6340)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6337)
                       ((_ to_fp 11 53) x1_ack!6336))
               ((_ to_fp 11 53) x1_ack!6336))
       ((_ to_fp 11 53) x2_ack!6337)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6337)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6337)
                       ((_ to_fp 11 53) x1_ack!6336)))
       ((_ to_fp 11 53) x1_ack!6336)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6336)
                    ((_ to_fp 11 53) x0_ack!6340))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6337)
                    ((_ to_fp 11 53) x1_ack!6336))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6338) ((_ to_fp 11 53) b_ack!6339))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6338) ((_ to_fp 11 53) x0_ack!6340))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6339) ((_ to_fp 11 53) x2_ack!6337))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6338) ((_ to_fp 11 53) b_ack!6339))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6338) ((_ to_fp 11 53) x0_ack!6340))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6338) ((_ to_fp 11 53) x1_ack!6336)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6336) ((_ to_fp 11 53) a_ack!6338))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6339) ((_ to_fp 11 53) x1_ack!6336))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6339) ((_ to_fp 11 53) x2_ack!6337))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6337)
                    ((_ to_fp 11 53) x1_ack!6336))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
