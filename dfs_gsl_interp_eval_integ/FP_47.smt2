(declare-fun x1_ack!2282 () (_ BitVec 64))
(declare-fun x0_ack!2286 () (_ BitVec 64))
(declare-fun x2_ack!2283 () (_ BitVec 64))
(declare-fun b_ack!2285 () (_ BitVec 64))
(declare-fun a_ack!2284 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2286) ((_ to_fp 11 53) x1_ack!2282)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2282) ((_ to_fp 11 53) x2_ack!2283)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2282)
                       ((_ to_fp 11 53) x0_ack!2286))
               ((_ to_fp 11 53) x0_ack!2286))
       ((_ to_fp 11 53) x1_ack!2282)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2282)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2282)
                       ((_ to_fp 11 53) x0_ack!2286)))
       ((_ to_fp 11 53) x0_ack!2286)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2283)
                       ((_ to_fp 11 53) x1_ack!2282))
               ((_ to_fp 11 53) x1_ack!2282))
       ((_ to_fp 11 53) x2_ack!2283)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2283)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2283)
                       ((_ to_fp 11 53) x1_ack!2282)))
       ((_ to_fp 11 53) x1_ack!2282)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2282)
                    ((_ to_fp 11 53) x0_ack!2286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2283)
                    ((_ to_fp 11 53) x1_ack!2282))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2284) ((_ to_fp 11 53) b_ack!2285))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2284) ((_ to_fp 11 53) x0_ack!2286))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2285) ((_ to_fp 11 53) x2_ack!2283))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2284) ((_ to_fp 11 53) b_ack!2285))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2284) ((_ to_fp 11 53) x0_ack!2286))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2284) ((_ to_fp 11 53) x1_ack!2282))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2285) ((_ to_fp 11 53) x0_ack!2286))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2285) ((_ to_fp 11 53) x1_ack!2282)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2282) ((_ to_fp 11 53) b_ack!2285))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2282)
                    ((_ to_fp 11 53) x0_ack!2286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2283)
                    ((_ to_fp 11 53) x1_ack!2282))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
