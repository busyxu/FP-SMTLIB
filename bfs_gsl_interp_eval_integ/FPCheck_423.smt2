(declare-fun x1_ack!5330 () (_ BitVec 64))
(declare-fun x0_ack!5334 () (_ BitVec 64))
(declare-fun x2_ack!5331 () (_ BitVec 64))
(declare-fun b_ack!5333 () (_ BitVec 64))
(declare-fun a_ack!5332 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5334) ((_ to_fp 11 53) x1_ack!5330)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5330) ((_ to_fp 11 53) x2_ack!5331)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5330)
                       ((_ to_fp 11 53) x0_ack!5334))
               ((_ to_fp 11 53) x0_ack!5334))
       ((_ to_fp 11 53) x1_ack!5330)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5330)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5330)
                       ((_ to_fp 11 53) x0_ack!5334)))
       ((_ to_fp 11 53) x0_ack!5334)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5331)
                       ((_ to_fp 11 53) x1_ack!5330))
               ((_ to_fp 11 53) x1_ack!5330))
       ((_ to_fp 11 53) x2_ack!5331)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5331)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5331)
                       ((_ to_fp 11 53) x1_ack!5330)))
       ((_ to_fp 11 53) x1_ack!5330)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5330)
                    ((_ to_fp 11 53) x0_ack!5334))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5331)
                    ((_ to_fp 11 53) x1_ack!5330))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5332) ((_ to_fp 11 53) b_ack!5333))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5332) ((_ to_fp 11 53) x0_ack!5334))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5333) ((_ to_fp 11 53) x2_ack!5331))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5332) ((_ to_fp 11 53) b_ack!5333))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5332) ((_ to_fp 11 53) x0_ack!5334))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5332) ((_ to_fp 11 53) x1_ack!5330)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5330) ((_ to_fp 11 53) a_ack!5332))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5333) ((_ to_fp 11 53) x1_ack!5330))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5333) ((_ to_fp 11 53) x2_ack!5331)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5331)
                    ((_ to_fp 11 53) x1_ack!5330))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5332)
                       ((_ to_fp 11 53) x1_ack!5330))
               ((_ to_fp 11 53) x1_ack!5330))
       ((_ to_fp 11 53) a_ack!5332)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5332)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5332)
                       ((_ to_fp 11 53) x1_ack!5330)))
       ((_ to_fp 11 53) x1_ack!5330)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5332)
          ((_ to_fp 11 53) x1_ack!5330))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5332)
          ((_ to_fp 11 53) x1_ack!5330))))

(check-sat)
(exit)
