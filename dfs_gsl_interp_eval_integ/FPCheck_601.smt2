(declare-fun x1_ack!7629 () (_ BitVec 64))
(declare-fun x0_ack!7633 () (_ BitVec 64))
(declare-fun x2_ack!7630 () (_ BitVec 64))
(declare-fun b_ack!7632 () (_ BitVec 64))
(declare-fun a_ack!7631 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7633) ((_ to_fp 11 53) x1_ack!7629)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7629) ((_ to_fp 11 53) x2_ack!7630)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7629)
                       ((_ to_fp 11 53) x0_ack!7633))
               ((_ to_fp 11 53) x0_ack!7633))
       ((_ to_fp 11 53) x1_ack!7629)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7629)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7629)
                       ((_ to_fp 11 53) x0_ack!7633)))
       ((_ to_fp 11 53) x0_ack!7633)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7630)
                       ((_ to_fp 11 53) x1_ack!7629))
               ((_ to_fp 11 53) x1_ack!7629))
       ((_ to_fp 11 53) x2_ack!7630)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7630)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7630)
                       ((_ to_fp 11 53) x1_ack!7629)))
       ((_ to_fp 11 53) x1_ack!7629)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7629)
                    ((_ to_fp 11 53) x0_ack!7633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7630)
                    ((_ to_fp 11 53) x1_ack!7629))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7631) ((_ to_fp 11 53) b_ack!7632))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7631) ((_ to_fp 11 53) x0_ack!7633))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7632) ((_ to_fp 11 53) x2_ack!7630))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7631) ((_ to_fp 11 53) b_ack!7632))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7631) ((_ to_fp 11 53) x0_ack!7633))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7631) ((_ to_fp 11 53) x1_ack!7629))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7632) ((_ to_fp 11 53) x0_ack!7633)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7629)
                    ((_ to_fp 11 53) x0_ack!7633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!7629)
          ((_ to_fp 11 53) x0_ack!7633))))

(check-sat)
(exit)
