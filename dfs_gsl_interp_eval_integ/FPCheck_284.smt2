(declare-fun x1_ack!3430 () (_ BitVec 64))
(declare-fun x0_ack!3434 () (_ BitVec 64))
(declare-fun x2_ack!3431 () (_ BitVec 64))
(declare-fun b_ack!3433 () (_ BitVec 64))
(declare-fun a_ack!3432 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3434) ((_ to_fp 11 53) x1_ack!3430)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3430) ((_ to_fp 11 53) x2_ack!3431)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3430)
                       ((_ to_fp 11 53) x0_ack!3434))
               ((_ to_fp 11 53) x0_ack!3434))
       ((_ to_fp 11 53) x1_ack!3430)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3430)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3430)
                       ((_ to_fp 11 53) x0_ack!3434)))
       ((_ to_fp 11 53) x0_ack!3434)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3431)
                       ((_ to_fp 11 53) x1_ack!3430))
               ((_ to_fp 11 53) x1_ack!3430))
       ((_ to_fp 11 53) x2_ack!3431)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3431)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3431)
                       ((_ to_fp 11 53) x1_ack!3430)))
       ((_ to_fp 11 53) x1_ack!3430)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3430)
                    ((_ to_fp 11 53) x0_ack!3434))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3431)
                    ((_ to_fp 11 53) x1_ack!3430))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3432) ((_ to_fp 11 53) b_ack!3433))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3432) ((_ to_fp 11 53) x0_ack!3434))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3433) ((_ to_fp 11 53) x2_ack!3431))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3432) ((_ to_fp 11 53) b_ack!3433))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3432) ((_ to_fp 11 53) x0_ack!3434))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3432) ((_ to_fp 11 53) x1_ack!3430))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3433) ((_ to_fp 11 53) x0_ack!3434))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3433) ((_ to_fp 11 53) x1_ack!3430))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3430)
                    ((_ to_fp 11 53) x0_ack!3434))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x4008000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!3430)
          ((_ to_fp 11 53) x0_ack!3434))))

(check-sat)
(exit)
