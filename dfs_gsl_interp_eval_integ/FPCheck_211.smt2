(declare-fun x1_ack!2476 () (_ BitVec 64))
(declare-fun x0_ack!2480 () (_ BitVec 64))
(declare-fun x2_ack!2477 () (_ BitVec 64))
(declare-fun b_ack!2479 () (_ BitVec 64))
(declare-fun a_ack!2478 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2480) ((_ to_fp 11 53) x1_ack!2476)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2476) ((_ to_fp 11 53) x2_ack!2477)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2476)
                       ((_ to_fp 11 53) x0_ack!2480))
               ((_ to_fp 11 53) x0_ack!2480))
       ((_ to_fp 11 53) x1_ack!2476)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2476)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2476)
                       ((_ to_fp 11 53) x0_ack!2480)))
       ((_ to_fp 11 53) x0_ack!2480)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2477)
                       ((_ to_fp 11 53) x1_ack!2476))
               ((_ to_fp 11 53) x1_ack!2476))
       ((_ to_fp 11 53) x2_ack!2477)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2477)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2477)
                       ((_ to_fp 11 53) x1_ack!2476)))
       ((_ to_fp 11 53) x1_ack!2476)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2476)
                    ((_ to_fp 11 53) x0_ack!2480))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2477)
                    ((_ to_fp 11 53) x1_ack!2476))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2478) ((_ to_fp 11 53) b_ack!2479))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2478) ((_ to_fp 11 53) x0_ack!2480))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2479) ((_ to_fp 11 53) x2_ack!2477))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2478) ((_ to_fp 11 53) b_ack!2479))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2478) ((_ to_fp 11 53) x0_ack!2480))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2478) ((_ to_fp 11 53) x1_ack!2476))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2479) ((_ to_fp 11 53) x0_ack!2480))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2479) ((_ to_fp 11 53) x1_ack!2476)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2476) ((_ to_fp 11 53) b_ack!2479))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2476)
                    ((_ to_fp 11 53) x0_ack!2480))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2477)
                    ((_ to_fp 11 53) x1_ack!2476))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2479)
          ((_ to_fp 11 53) x1_ack!2476))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2479)
          ((_ to_fp 11 53) x1_ack!2476))))

(check-sat)
(exit)
