(declare-fun x1_ack!7272 () (_ BitVec 64))
(declare-fun x0_ack!7276 () (_ BitVec 64))
(declare-fun x2_ack!7273 () (_ BitVec 64))
(declare-fun b_ack!7275 () (_ BitVec 64))
(declare-fun a_ack!7274 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7276) ((_ to_fp 11 53) x1_ack!7272)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7272) ((_ to_fp 11 53) x2_ack!7273)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7272)
                       ((_ to_fp 11 53) x0_ack!7276))
               ((_ to_fp 11 53) x0_ack!7276))
       ((_ to_fp 11 53) x1_ack!7272)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7272)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7272)
                       ((_ to_fp 11 53) x0_ack!7276)))
       ((_ to_fp 11 53) x0_ack!7276)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7273)
                       ((_ to_fp 11 53) x1_ack!7272))
               ((_ to_fp 11 53) x1_ack!7272))
       ((_ to_fp 11 53) x2_ack!7273)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7273)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7273)
                       ((_ to_fp 11 53) x1_ack!7272)))
       ((_ to_fp 11 53) x1_ack!7272)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7272)
                    ((_ to_fp 11 53) x0_ack!7276))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7273)
                    ((_ to_fp 11 53) x1_ack!7272))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7274) ((_ to_fp 11 53) b_ack!7275))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7274) ((_ to_fp 11 53) x0_ack!7276))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7275) ((_ to_fp 11 53) x2_ack!7273))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7274) ((_ to_fp 11 53) b_ack!7275))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7274) ((_ to_fp 11 53) x0_ack!7276))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7274) ((_ to_fp 11 53) x1_ack!7272))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7275) ((_ to_fp 11 53) x0_ack!7276))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7275) ((_ to_fp 11 53) x1_ack!7272)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7272) ((_ to_fp 11 53) b_ack!7275))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7272)
                    ((_ to_fp 11 53) x0_ack!7276))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7273)
                    ((_ to_fp 11 53) x1_ack!7272))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7272)
          ((_ to_fp 11 53) x1_ack!7272))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7272)
          ((_ to_fp 11 53) x1_ack!7272))))

(check-sat)
(exit)
