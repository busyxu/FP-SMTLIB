(declare-fun x1_ack!2738 () (_ BitVec 64))
(declare-fun x0_ack!2742 () (_ BitVec 64))
(declare-fun x2_ack!2739 () (_ BitVec 64))
(declare-fun b_ack!2741 () (_ BitVec 64))
(declare-fun a_ack!2740 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2742) ((_ to_fp 11 53) x1_ack!2738)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2738) ((_ to_fp 11 53) x2_ack!2739)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2738)
                       ((_ to_fp 11 53) x0_ack!2742))
               ((_ to_fp 11 53) x0_ack!2742))
       ((_ to_fp 11 53) x1_ack!2738)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2738)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2738)
                       ((_ to_fp 11 53) x0_ack!2742)))
       ((_ to_fp 11 53) x0_ack!2742)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2739)
                       ((_ to_fp 11 53) x1_ack!2738))
               ((_ to_fp 11 53) x1_ack!2738))
       ((_ to_fp 11 53) x2_ack!2739)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2739)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2739)
                       ((_ to_fp 11 53) x1_ack!2738)))
       ((_ to_fp 11 53) x1_ack!2738)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2738)
                    ((_ to_fp 11 53) x0_ack!2742))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2739)
                    ((_ to_fp 11 53) x1_ack!2738))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2740) ((_ to_fp 11 53) b_ack!2741))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2740) ((_ to_fp 11 53) x0_ack!2742))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2741) ((_ to_fp 11 53) x2_ack!2739))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2740) ((_ to_fp 11 53) b_ack!2741))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2740) ((_ to_fp 11 53) x0_ack!2742))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2740) ((_ to_fp 11 53) x1_ack!2738)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2738) ((_ to_fp 11 53) a_ack!2740))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2741) ((_ to_fp 11 53) x1_ack!2738))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2741) ((_ to_fp 11 53) x2_ack!2739))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2739)
                    ((_ to_fp 11 53) x1_ack!2738))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2741)
          ((_ to_fp 11 53) x1_ack!2738))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!2741)
          ((_ to_fp 11 53) x1_ack!2738))))

(check-sat)
(exit)
