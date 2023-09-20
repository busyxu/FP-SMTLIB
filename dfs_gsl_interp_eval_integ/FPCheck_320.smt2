(declare-fun x1_ack!3871 () (_ BitVec 64))
(declare-fun x0_ack!3875 () (_ BitVec 64))
(declare-fun x2_ack!3872 () (_ BitVec 64))
(declare-fun b_ack!3874 () (_ BitVec 64))
(declare-fun a_ack!3873 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3875) ((_ to_fp 11 53) x1_ack!3871)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3871) ((_ to_fp 11 53) x2_ack!3872)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3871)
                       ((_ to_fp 11 53) x0_ack!3875))
               ((_ to_fp 11 53) x0_ack!3875))
       ((_ to_fp 11 53) x1_ack!3871)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3871)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3871)
                       ((_ to_fp 11 53) x0_ack!3875)))
       ((_ to_fp 11 53) x0_ack!3875)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3872)
                       ((_ to_fp 11 53) x1_ack!3871))
               ((_ to_fp 11 53) x1_ack!3871))
       ((_ to_fp 11 53) x2_ack!3872)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3872)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3872)
                       ((_ to_fp 11 53) x1_ack!3871)))
       ((_ to_fp 11 53) x1_ack!3871)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3871)
                    ((_ to_fp 11 53) x0_ack!3875))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3872)
                    ((_ to_fp 11 53) x1_ack!3871))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3873) ((_ to_fp 11 53) b_ack!3874))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3873) ((_ to_fp 11 53) x0_ack!3875))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3874) ((_ to_fp 11 53) x2_ack!3872))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3873) ((_ to_fp 11 53) b_ack!3874))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3873) ((_ to_fp 11 53) x0_ack!3875))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3873) ((_ to_fp 11 53) x1_ack!3871))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3874) ((_ to_fp 11 53) x0_ack!3875))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3874) ((_ to_fp 11 53) x1_ack!3871))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3871)
                    ((_ to_fp 11 53) x0_ack!3875))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3873)
                                   ((_ to_fp 11 53) x0_ack!3875))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!3873)
                                   ((_ to_fp 11 53) x0_ack!3875)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3874)
                                   ((_ to_fp 11 53) x0_ack!3875))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!3874)
                                   ((_ to_fp 11 53) x0_ack!3875))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!3873)
                    ((_ to_fp 11 53) x0_ack!3875))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!3874)
                    ((_ to_fp 11 53) x0_ack!3875))))))

(check-sat)
(exit)
