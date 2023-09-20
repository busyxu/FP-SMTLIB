(declare-fun x1_ack!922 () (_ BitVec 64))
(declare-fun x0_ack!926 () (_ BitVec 64))
(declare-fun x2_ack!923 () (_ BitVec 64))
(declare-fun b_ack!925 () (_ BitVec 64))
(declare-fun a_ack!924 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!926) ((_ to_fp 11 53) x1_ack!922)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!922) ((_ to_fp 11 53) x2_ack!923)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!922)
                       ((_ to_fp 11 53) x0_ack!926))
               ((_ to_fp 11 53) x0_ack!926))
       ((_ to_fp 11 53) x1_ack!922)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!922)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!922)
                       ((_ to_fp 11 53) x0_ack!926)))
       ((_ to_fp 11 53) x0_ack!926)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!923)
                       ((_ to_fp 11 53) x1_ack!922))
               ((_ to_fp 11 53) x1_ack!922))
       ((_ to_fp 11 53) x2_ack!923)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!923)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!923)
                       ((_ to_fp 11 53) x1_ack!922)))
       ((_ to_fp 11 53) x1_ack!922)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!922)
                    ((_ to_fp 11 53) x0_ack!926))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!923)
                    ((_ to_fp 11 53) x1_ack!922))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!924) ((_ to_fp 11 53) b_ack!925))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!924) ((_ to_fp 11 53) x0_ack!926))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!925) ((_ to_fp 11 53) x2_ack!923))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!924) ((_ to_fp 11 53) b_ack!925))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!924) ((_ to_fp 11 53) x0_ack!926))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!924) ((_ to_fp 11 53) x1_ack!922))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!925) ((_ to_fp 11 53) x0_ack!926))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!925) ((_ to_fp 11 53) x1_ack!922)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!922) ((_ to_fp 11 53) b_ack!925))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!922)
                    ((_ to_fp 11 53) x0_ack!926))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
