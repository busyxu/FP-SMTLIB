(declare-fun x1_ack!6883 () (_ BitVec 64))
(declare-fun x0_ack!6890 () (_ BitVec 64))
(declare-fun x2_ack!6884 () (_ BitVec 64))
(declare-fun b_ack!6889 () (_ BitVec 64))
(declare-fun a_ack!6888 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6885 () (_ BitVec 64))
(declare-fun y1_ack!6886 () (_ BitVec 64))
(declare-fun y2_ack!6887 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6890) ((_ to_fp 11 53) x1_ack!6883)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6883) ((_ to_fp 11 53) x2_ack!6884)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6883)
                       ((_ to_fp 11 53) x0_ack!6890))
               ((_ to_fp 11 53) x0_ack!6890))
       ((_ to_fp 11 53) x1_ack!6883)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6883)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6883)
                       ((_ to_fp 11 53) x0_ack!6890)))
       ((_ to_fp 11 53) x0_ack!6890)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6884)
                       ((_ to_fp 11 53) x1_ack!6883))
               ((_ to_fp 11 53) x1_ack!6883))
       ((_ to_fp 11 53) x2_ack!6884)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6884)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6884)
                       ((_ to_fp 11 53) x1_ack!6883)))
       ((_ to_fp 11 53) x1_ack!6883)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6883)
                    ((_ to_fp 11 53) x0_ack!6890))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6884)
                    ((_ to_fp 11 53) x1_ack!6883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6888) ((_ to_fp 11 53) b_ack!6889))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6888) ((_ to_fp 11 53) x0_ack!6890))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6889) ((_ to_fp 11 53) x2_ack!6884))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6888) ((_ to_fp 11 53) b_ack!6889))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6888) ((_ to_fp 11 53) x0_ack!6890))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6888) ((_ to_fp 11 53) x1_ack!6883))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6889) ((_ to_fp 11 53) x0_ack!6890))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6889) ((_ to_fp 11 53) x1_ack!6883)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6883) ((_ to_fp 11 53) b_ack!6889))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6883)
                    ((_ to_fp 11 53) x0_ack!6890))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6884)
                    ((_ to_fp 11 53) x1_ack!6883))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6887)
                           ((_ to_fp 11 53) y1_ack!6886))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6884)
                                   ((_ to_fp 11 53) x1_ack!6883)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6886)
                           ((_ to_fp 11 53) y0_ack!6885))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6883)
                                   ((_ to_fp 11 53) x0_ack!6890)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6884)
                                   ((_ to_fp 11 53) x1_ack!6883))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6883)
                                   ((_ to_fp 11 53) x0_ack!6890))))))
  (FPCHECK_FSUB_OVERFLOW
    #x0000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
