(declare-fun x1_ack!4629 () (_ BitVec 64))
(declare-fun x0_ack!4633 () (_ BitVec 64))
(declare-fun x2_ack!4630 () (_ BitVec 64))
(declare-fun b_ack!4632 () (_ BitVec 64))
(declare-fun a_ack!4631 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4633) ((_ to_fp 11 53) x1_ack!4629)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4629) ((_ to_fp 11 53) x2_ack!4630)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4629)
                       ((_ to_fp 11 53) x0_ack!4633))
               ((_ to_fp 11 53) x0_ack!4633))
       ((_ to_fp 11 53) x1_ack!4629)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4629)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4629)
                       ((_ to_fp 11 53) x0_ack!4633)))
       ((_ to_fp 11 53) x0_ack!4633)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4630)
                       ((_ to_fp 11 53) x1_ack!4629))
               ((_ to_fp 11 53) x1_ack!4629))
       ((_ to_fp 11 53) x2_ack!4630)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4630)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4630)
                       ((_ to_fp 11 53) x1_ack!4629)))
       ((_ to_fp 11 53) x1_ack!4629)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4629)
                    ((_ to_fp 11 53) x0_ack!4633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4630)
                    ((_ to_fp 11 53) x1_ack!4629))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4631) ((_ to_fp 11 53) b_ack!4632))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4631) ((_ to_fp 11 53) x0_ack!4633))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4632) ((_ to_fp 11 53) x2_ack!4630))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4631) ((_ to_fp 11 53) b_ack!4632))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4631) ((_ to_fp 11 53) x0_ack!4633))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4631) ((_ to_fp 11 53) x1_ack!4629))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4632) ((_ to_fp 11 53) x0_ack!4633))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4632) ((_ to_fp 11 53) x1_ack!4629))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4629)
                    ((_ to_fp 11 53) x0_ack!4633))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4631)
          ((_ to_fp 11 53) x0_ack!4633))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4631)
          ((_ to_fp 11 53) x0_ack!4633))))

(check-sat)
(exit)
