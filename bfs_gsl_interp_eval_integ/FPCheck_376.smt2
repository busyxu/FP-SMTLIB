(declare-fun x1_ack!4689 () (_ BitVec 64))
(declare-fun x0_ack!4693 () (_ BitVec 64))
(declare-fun x2_ack!4690 () (_ BitVec 64))
(declare-fun b_ack!4692 () (_ BitVec 64))
(declare-fun a_ack!4691 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4693) ((_ to_fp 11 53) x1_ack!4689)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4689) ((_ to_fp 11 53) x2_ack!4690)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4689)
                       ((_ to_fp 11 53) x0_ack!4693))
               ((_ to_fp 11 53) x0_ack!4693))
       ((_ to_fp 11 53) x1_ack!4689)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4689)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4689)
                       ((_ to_fp 11 53) x0_ack!4693)))
       ((_ to_fp 11 53) x0_ack!4693)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4690)
                       ((_ to_fp 11 53) x1_ack!4689))
               ((_ to_fp 11 53) x1_ack!4689))
       ((_ to_fp 11 53) x2_ack!4690)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4690)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4690)
                       ((_ to_fp 11 53) x1_ack!4689)))
       ((_ to_fp 11 53) x1_ack!4689)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4689)
                    ((_ to_fp 11 53) x0_ack!4693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4690)
                    ((_ to_fp 11 53) x1_ack!4689))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4691) ((_ to_fp 11 53) b_ack!4692))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4691) ((_ to_fp 11 53) x0_ack!4693))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4692) ((_ to_fp 11 53) x2_ack!4690))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4691) ((_ to_fp 11 53) b_ack!4692))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4691) ((_ to_fp 11 53) x0_ack!4693))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4691) ((_ to_fp 11 53) x1_ack!4689))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4692) ((_ to_fp 11 53) x0_ack!4693))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4692) ((_ to_fp 11 53) x1_ack!4689))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4689)
                    ((_ to_fp 11 53) x0_ack!4693))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4691)
                  ((_ to_fp 11 53) x0_ack!4693))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4691)
                  ((_ to_fp 11 53) x0_ack!4693)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4692)
                  ((_ to_fp 11 53) x0_ack!4693))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4692)
                  ((_ to_fp 11 53) x0_ack!4693)))))

(check-sat)
(exit)
