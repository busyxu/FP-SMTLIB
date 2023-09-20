(declare-fun x1_ack!7282 () (_ BitVec 64))
(declare-fun x0_ack!7286 () (_ BitVec 64))
(declare-fun x2_ack!7283 () (_ BitVec 64))
(declare-fun b_ack!7285 () (_ BitVec 64))
(declare-fun a_ack!7284 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7286) ((_ to_fp 11 53) x1_ack!7282)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7282) ((_ to_fp 11 53) x2_ack!7283)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7282)
                       ((_ to_fp 11 53) x0_ack!7286))
               ((_ to_fp 11 53) x0_ack!7286))
       ((_ to_fp 11 53) x1_ack!7282)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7282)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7282)
                       ((_ to_fp 11 53) x0_ack!7286)))
       ((_ to_fp 11 53) x0_ack!7286)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7283)
                       ((_ to_fp 11 53) x1_ack!7282))
               ((_ to_fp 11 53) x1_ack!7282))
       ((_ to_fp 11 53) x2_ack!7283)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7283)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7283)
                       ((_ to_fp 11 53) x1_ack!7282)))
       ((_ to_fp 11 53) x1_ack!7282)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7282)
                    ((_ to_fp 11 53) x0_ack!7286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7283)
                    ((_ to_fp 11 53) x1_ack!7282))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) b_ack!7285))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) x0_ack!7286))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7285) ((_ to_fp 11 53) x2_ack!7283))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) b_ack!7285))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) x0_ack!7286))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7284) ((_ to_fp 11 53) x1_ack!7282))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7285) ((_ to_fp 11 53) x0_ack!7286))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7285) ((_ to_fp 11 53) x1_ack!7282)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7282) ((_ to_fp 11 53) b_ack!7285))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7282)
                    ((_ to_fp 11 53) x0_ack!7286))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7283)
                    ((_ to_fp 11 53) x1_ack!7282))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7285)
          ((_ to_fp 11 53) x1_ack!7282))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!7285)
          ((_ to_fp 11 53) x1_ack!7282))))

(check-sat)
(exit)
