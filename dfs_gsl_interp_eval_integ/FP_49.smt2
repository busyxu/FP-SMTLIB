(declare-fun x1_ack!2436 () (_ BitVec 64))
(declare-fun x0_ack!2440 () (_ BitVec 64))
(declare-fun x2_ack!2437 () (_ BitVec 64))
(declare-fun b_ack!2439 () (_ BitVec 64))
(declare-fun a_ack!2438 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2440) ((_ to_fp 11 53) x1_ack!2436)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2436) ((_ to_fp 11 53) x2_ack!2437)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2436)
                       ((_ to_fp 11 53) x0_ack!2440))
               ((_ to_fp 11 53) x0_ack!2440))
       ((_ to_fp 11 53) x1_ack!2436)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2436)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2436)
                       ((_ to_fp 11 53) x0_ack!2440)))
       ((_ to_fp 11 53) x0_ack!2440)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2437)
                       ((_ to_fp 11 53) x1_ack!2436))
               ((_ to_fp 11 53) x1_ack!2436))
       ((_ to_fp 11 53) x2_ack!2437)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2437)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2437)
                       ((_ to_fp 11 53) x1_ack!2436)))
       ((_ to_fp 11 53) x1_ack!2436)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2436)
                    ((_ to_fp 11 53) x0_ack!2440))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2437)
                    ((_ to_fp 11 53) x1_ack!2436))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) b_ack!2439))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) x0_ack!2440))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) x2_ack!2437))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) b_ack!2439))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) x0_ack!2440))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2438) ((_ to_fp 11 53) x1_ack!2436))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) x0_ack!2440))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2439) ((_ to_fp 11 53) x1_ack!2436)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2436) ((_ to_fp 11 53) b_ack!2439))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2436)
                    ((_ to_fp 11 53) x0_ack!2440))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2437)
                    ((_ to_fp 11 53) x1_ack!2436))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
