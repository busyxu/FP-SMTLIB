(declare-fun x1_ack!5583 () (_ BitVec 64))
(declare-fun x0_ack!5587 () (_ BitVec 64))
(declare-fun x2_ack!5584 () (_ BitVec 64))
(declare-fun b_ack!5586 () (_ BitVec 64))
(declare-fun a_ack!5585 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5587) ((_ to_fp 11 53) x1_ack!5583)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5583) ((_ to_fp 11 53) x2_ack!5584)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5583)
                       ((_ to_fp 11 53) x0_ack!5587))
               ((_ to_fp 11 53) x0_ack!5587))
       ((_ to_fp 11 53) x1_ack!5583)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5583)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5583)
                       ((_ to_fp 11 53) x0_ack!5587)))
       ((_ to_fp 11 53) x0_ack!5587)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5584)
                       ((_ to_fp 11 53) x1_ack!5583))
               ((_ to_fp 11 53) x1_ack!5583))
       ((_ to_fp 11 53) x2_ack!5584)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5584)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5584)
                       ((_ to_fp 11 53) x1_ack!5583)))
       ((_ to_fp 11 53) x1_ack!5583)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5583)
                    ((_ to_fp 11 53) x0_ack!5587))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5584)
                    ((_ to_fp 11 53) x1_ack!5583))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5585) ((_ to_fp 11 53) b_ack!5586))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5585) ((_ to_fp 11 53) x0_ack!5587))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5586) ((_ to_fp 11 53) x2_ack!5584))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5585) ((_ to_fp 11 53) b_ack!5586))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5585) ((_ to_fp 11 53) x0_ack!5587))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5585) ((_ to_fp 11 53) x1_ack!5583))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5586) ((_ to_fp 11 53) x0_ack!5587))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5586) ((_ to_fp 11 53) x1_ack!5583)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5583) ((_ to_fp 11 53) b_ack!5586))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5583)
                    ((_ to_fp 11 53) x0_ack!5587))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5583)
          ((_ to_fp 11 53) x0_ack!5587))))

(check-sat)
(exit)
