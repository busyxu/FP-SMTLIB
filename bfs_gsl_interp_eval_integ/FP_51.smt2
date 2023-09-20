(declare-fun x1_ack!2449 () (_ BitVec 64))
(declare-fun x0_ack!2453 () (_ BitVec 64))
(declare-fun x2_ack!2450 () (_ BitVec 64))
(declare-fun b_ack!2452 () (_ BitVec 64))
(declare-fun a_ack!2451 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2453) ((_ to_fp 11 53) x1_ack!2449)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2449) ((_ to_fp 11 53) x2_ack!2450)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2449)
                       ((_ to_fp 11 53) x0_ack!2453))
               ((_ to_fp 11 53) x0_ack!2453))
       ((_ to_fp 11 53) x1_ack!2449)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2449)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2449)
                       ((_ to_fp 11 53) x0_ack!2453)))
       ((_ to_fp 11 53) x0_ack!2453)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2450)
                       ((_ to_fp 11 53) x1_ack!2449))
               ((_ to_fp 11 53) x1_ack!2449))
       ((_ to_fp 11 53) x2_ack!2450)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2450)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2450)
                       ((_ to_fp 11 53) x1_ack!2449)))
       ((_ to_fp 11 53) x1_ack!2449)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2449)
                    ((_ to_fp 11 53) x0_ack!2453))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2450)
                    ((_ to_fp 11 53) x1_ack!2449))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2451) ((_ to_fp 11 53) b_ack!2452))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2451) ((_ to_fp 11 53) x0_ack!2453))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2452) ((_ to_fp 11 53) x2_ack!2450))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2451) ((_ to_fp 11 53) b_ack!2452))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2451) ((_ to_fp 11 53) x0_ack!2453))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2451) ((_ to_fp 11 53) x1_ack!2449)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2449) ((_ to_fp 11 53) a_ack!2451))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2452) ((_ to_fp 11 53) x1_ack!2449))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2452) ((_ to_fp 11 53) x2_ack!2450))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2450)
                    ((_ to_fp 11 53) x1_ack!2449))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
