(declare-fun x1_ack!3811 () (_ BitVec 64))
(declare-fun x0_ack!3815 () (_ BitVec 64))
(declare-fun x2_ack!3812 () (_ BitVec 64))
(declare-fun b_ack!3814 () (_ BitVec 64))
(declare-fun a_ack!3813 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3815) ((_ to_fp 11 53) x1_ack!3811)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3811) ((_ to_fp 11 53) x2_ack!3812)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3811)
                       ((_ to_fp 11 53) x0_ack!3815))
               ((_ to_fp 11 53) x0_ack!3815))
       ((_ to_fp 11 53) x1_ack!3811)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3811)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3811)
                       ((_ to_fp 11 53) x0_ack!3815)))
       ((_ to_fp 11 53) x0_ack!3815)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3812)
                       ((_ to_fp 11 53) x1_ack!3811))
               ((_ to_fp 11 53) x1_ack!3811))
       ((_ to_fp 11 53) x2_ack!3812)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3812)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3812)
                       ((_ to_fp 11 53) x1_ack!3811)))
       ((_ to_fp 11 53) x1_ack!3811)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3811)
                    ((_ to_fp 11 53) x0_ack!3815))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3812)
                    ((_ to_fp 11 53) x1_ack!3811))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3813) ((_ to_fp 11 53) b_ack!3814))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3813) ((_ to_fp 11 53) x0_ack!3815))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3814) ((_ to_fp 11 53) x2_ack!3812))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3813) ((_ to_fp 11 53) b_ack!3814))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3813) ((_ to_fp 11 53) x0_ack!3815))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3813) ((_ to_fp 11 53) x1_ack!3811))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3814) ((_ to_fp 11 53) x0_ack!3815))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3814) ((_ to_fp 11 53) x1_ack!3811))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3811)
                    ((_ to_fp 11 53) x0_ack!3815))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3813)
                  ((_ to_fp 11 53) x0_ack!3815))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!3813)
                  ((_ to_fp 11 53) x0_ack!3815)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3814)
                  ((_ to_fp 11 53) x0_ack!3815))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3814)
                  ((_ to_fp 11 53) x0_ack!3815)))))

(check-sat)
(exit)
