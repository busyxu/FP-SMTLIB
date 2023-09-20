(declare-fun x1_ack!2446 () (_ BitVec 64))
(declare-fun x0_ack!2450 () (_ BitVec 64))
(declare-fun x2_ack!2447 () (_ BitVec 64))
(declare-fun b_ack!2449 () (_ BitVec 64))
(declare-fun a_ack!2448 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2450) ((_ to_fp 11 53) x1_ack!2446)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2446) ((_ to_fp 11 53) x2_ack!2447)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2446)
                       ((_ to_fp 11 53) x0_ack!2450))
               ((_ to_fp 11 53) x0_ack!2450))
       ((_ to_fp 11 53) x1_ack!2446)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2446)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2446)
                       ((_ to_fp 11 53) x0_ack!2450)))
       ((_ to_fp 11 53) x0_ack!2450)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2447)
                       ((_ to_fp 11 53) x1_ack!2446))
               ((_ to_fp 11 53) x1_ack!2446))
       ((_ to_fp 11 53) x2_ack!2447)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2447)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2447)
                       ((_ to_fp 11 53) x1_ack!2446)))
       ((_ to_fp 11 53) x1_ack!2446)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2446)
                    ((_ to_fp 11 53) x0_ack!2450))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2447)
                    ((_ to_fp 11 53) x1_ack!2446))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2448) ((_ to_fp 11 53) b_ack!2449))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2448) ((_ to_fp 11 53) x0_ack!2450))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2449) ((_ to_fp 11 53) x2_ack!2447))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2448) ((_ to_fp 11 53) b_ack!2449))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2448) ((_ to_fp 11 53) x0_ack!2450))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2448) ((_ to_fp 11 53) x1_ack!2446))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2449) ((_ to_fp 11 53) x0_ack!2450))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2449) ((_ to_fp 11 53) x1_ack!2446)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2446) ((_ to_fp 11 53) b_ack!2449))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2446)
                    ((_ to_fp 11 53) x0_ack!2450))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2447)
                    ((_ to_fp 11 53) x1_ack!2446))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2446)
          ((_ to_fp 11 53) x1_ack!2446))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2446)
          ((_ to_fp 11 53) x1_ack!2446))))

(check-sat)
(exit)
