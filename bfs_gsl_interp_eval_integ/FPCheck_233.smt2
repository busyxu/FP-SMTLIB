(declare-fun x1_ack!2783 () (_ BitVec 64))
(declare-fun x0_ack!2787 () (_ BitVec 64))
(declare-fun x2_ack!2784 () (_ BitVec 64))
(declare-fun b_ack!2786 () (_ BitVec 64))
(declare-fun a_ack!2785 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!2787) ((_ to_fp 11 53) x1_ack!2783)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!2783) ((_ to_fp 11 53) x2_ack!2784)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2783)
                       ((_ to_fp 11 53) x0_ack!2787))
               ((_ to_fp 11 53) x0_ack!2787))
       ((_ to_fp 11 53) x1_ack!2783)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2783)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2783)
                       ((_ to_fp 11 53) x0_ack!2787)))
       ((_ to_fp 11 53) x0_ack!2787)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2784)
                       ((_ to_fp 11 53) x1_ack!2783))
               ((_ to_fp 11 53) x1_ack!2783))
       ((_ to_fp 11 53) x2_ack!2784)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!2784)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!2784)
                       ((_ to_fp 11 53) x1_ack!2783)))
       ((_ to_fp 11 53) x1_ack!2783)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!2783)
                    ((_ to_fp 11 53) x0_ack!2787))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2784)
                    ((_ to_fp 11 53) x1_ack!2783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2785) ((_ to_fp 11 53) b_ack!2786))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2785) ((_ to_fp 11 53) x0_ack!2787))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!2786) ((_ to_fp 11 53) x2_ack!2784))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2785) ((_ to_fp 11 53) b_ack!2786))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2785) ((_ to_fp 11 53) x0_ack!2787))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2785) ((_ to_fp 11 53) x1_ack!2783)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!2783) ((_ to_fp 11 53) a_ack!2785))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2786) ((_ to_fp 11 53) x1_ack!2783))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!2786) ((_ to_fp 11 53) x2_ack!2784))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!2784)
                    ((_ to_fp 11 53) x1_ack!2783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2785)
                  ((_ to_fp 11 53) x1_ack!2783))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2785)
                  ((_ to_fp 11 53) x1_ack!2783)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2786)
                  ((_ to_fp 11 53) x1_ack!2783))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2786)
                  ((_ to_fp 11 53) x1_ack!2783)))))

(check-sat)
(exit)
