(declare-fun x1_ack!6580 () (_ BitVec 64))
(declare-fun x0_ack!6584 () (_ BitVec 64))
(declare-fun x2_ack!6581 () (_ BitVec 64))
(declare-fun b_ack!6583 () (_ BitVec 64))
(declare-fun a_ack!6582 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6584) ((_ to_fp 11 53) x1_ack!6580)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6580) ((_ to_fp 11 53) x2_ack!6581)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6580)
                       ((_ to_fp 11 53) x0_ack!6584))
               ((_ to_fp 11 53) x0_ack!6584))
       ((_ to_fp 11 53) x1_ack!6580)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6580)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6580)
                       ((_ to_fp 11 53) x0_ack!6584)))
       ((_ to_fp 11 53) x0_ack!6584)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6581)
                       ((_ to_fp 11 53) x1_ack!6580))
               ((_ to_fp 11 53) x1_ack!6580))
       ((_ to_fp 11 53) x2_ack!6581)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6581)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6581)
                       ((_ to_fp 11 53) x1_ack!6580)))
       ((_ to_fp 11 53) x1_ack!6580)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6580)
                    ((_ to_fp 11 53) x0_ack!6584))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6581)
                    ((_ to_fp 11 53) x1_ack!6580))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6582) ((_ to_fp 11 53) b_ack!6583))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6582) ((_ to_fp 11 53) x0_ack!6584))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6583) ((_ to_fp 11 53) x2_ack!6581))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6582) ((_ to_fp 11 53) b_ack!6583))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6582) ((_ to_fp 11 53) x0_ack!6584))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6582) ((_ to_fp 11 53) x1_ack!6580)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6580) ((_ to_fp 11 53) a_ack!6582))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6583) ((_ to_fp 11 53) x1_ack!6580))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6583) ((_ to_fp 11 53) x2_ack!6581))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6581)
                    ((_ to_fp 11 53) x1_ack!6580))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6582)
          ((_ to_fp 11 53) x1_ack!6580))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!6582)
          ((_ to_fp 11 53) x1_ack!6580))))

(check-sat)
(exit)
