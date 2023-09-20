(declare-fun x1_ack!4428 () (_ BitVec 64))
(declare-fun x0_ack!4432 () (_ BitVec 64))
(declare-fun x2_ack!4429 () (_ BitVec 64))
(declare-fun b_ack!4431 () (_ BitVec 64))
(declare-fun a_ack!4430 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4432) ((_ to_fp 11 53) x1_ack!4428)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4428) ((_ to_fp 11 53) x2_ack!4429)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4428)
                       ((_ to_fp 11 53) x0_ack!4432))
               ((_ to_fp 11 53) x0_ack!4432))
       ((_ to_fp 11 53) x1_ack!4428)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4428)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4428)
                       ((_ to_fp 11 53) x0_ack!4432)))
       ((_ to_fp 11 53) x0_ack!4432)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4429)
                       ((_ to_fp 11 53) x1_ack!4428))
               ((_ to_fp 11 53) x1_ack!4428))
       ((_ to_fp 11 53) x2_ack!4429)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4429)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4429)
                       ((_ to_fp 11 53) x1_ack!4428)))
       ((_ to_fp 11 53) x1_ack!4428)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4428)
                    ((_ to_fp 11 53) x0_ack!4432))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4429)
                    ((_ to_fp 11 53) x1_ack!4428))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4430) ((_ to_fp 11 53) b_ack!4431))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4430) ((_ to_fp 11 53) x0_ack!4432))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4431) ((_ to_fp 11 53) x2_ack!4429))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4430) ((_ to_fp 11 53) b_ack!4431))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4430) ((_ to_fp 11 53) x0_ack!4432))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4430) ((_ to_fp 11 53) x1_ack!4428))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4431) ((_ to_fp 11 53) x0_ack!4432))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4431) ((_ to_fp 11 53) x1_ack!4428))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4428)
                    ((_ to_fp 11 53) x0_ack!4432))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4430)
                  ((_ to_fp 11 53) x0_ack!4432))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4430)
                  ((_ to_fp 11 53) x0_ack!4432)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4431)
                  ((_ to_fp 11 53) x0_ack!4432))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4431)
                  ((_ to_fp 11 53) x0_ack!4432)))))

(check-sat)
(exit)
