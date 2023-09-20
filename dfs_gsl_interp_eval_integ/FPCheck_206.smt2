(declare-fun x1_ack!2441 () (_ BitVec 64))
(declare-fun x0_ack!2445 () (_ BitVec 64))
(declare-fun x2_ack!2442 () (_ BitVec 64))
(declare-fun b_ack!2444 () (_ BitVec 64))
(declare-fun a_ack!2443 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2445) ((_ to_fp 11 53) x1_ack!2441)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2441) ((_ to_fp 11 53) x2_ack!2442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2441)
                       ((_ to_fp 11 53) x0_ack!2445))
               ((_ to_fp 11 53) x0_ack!2445))
       ((_ to_fp 11 53) x1_ack!2441)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2441)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2441)
                       ((_ to_fp 11 53) x0_ack!2445)))
       ((_ to_fp 11 53) x0_ack!2445)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2442)
                       ((_ to_fp 11 53) x1_ack!2441))
               ((_ to_fp 11 53) x1_ack!2441))
       ((_ to_fp 11 53) x2_ack!2442)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2442)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2442)
                       ((_ to_fp 11 53) x1_ack!2441)))
       ((_ to_fp 11 53) x1_ack!2441)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2441)
                    ((_ to_fp 11 53) x0_ack!2445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2442)
                    ((_ to_fp 11 53) x1_ack!2441))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2443) ((_ to_fp 11 53) b_ack!2444))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2443) ((_ to_fp 11 53) x0_ack!2445))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2444) ((_ to_fp 11 53) x2_ack!2442))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2443) ((_ to_fp 11 53) b_ack!2444))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2443) ((_ to_fp 11 53) x0_ack!2445))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!2443) ((_ to_fp 11 53) x1_ack!2441))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2444) ((_ to_fp 11 53) x0_ack!2445))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!2444) ((_ to_fp 11 53) x1_ack!2441)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2441) ((_ to_fp 11 53) b_ack!2444))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2441)
                    ((_ to_fp 11 53) x0_ack!2445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2442)
                    ((_ to_fp 11 53) x1_ack!2441))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2441)
          ((_ to_fp 11 53) x1_ack!2441))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2441)
          ((_ to_fp 11 53) x1_ack!2441))))

(check-sat)
(exit)
