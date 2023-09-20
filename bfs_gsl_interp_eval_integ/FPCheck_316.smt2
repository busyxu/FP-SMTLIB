(declare-fun x1_ack!3936 () (_ BitVec 64))
(declare-fun x0_ack!3943 () (_ BitVec 64))
(declare-fun x2_ack!3937 () (_ BitVec 64))
(declare-fun b_ack!3942 () (_ BitVec 64))
(declare-fun a_ack!3941 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun y0_ack!3938 () (_ BitVec 64))
(declare-fun y1_ack!3939 () (_ BitVec 64))
(declare-fun y2_ack!3940 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3943) ((_ to_fp 11 53) x1_ack!3936)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3936) ((_ to_fp 11 53) x2_ack!3937)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3936)
                       ((_ to_fp 11 53) x0_ack!3943))
               ((_ to_fp 11 53) x0_ack!3943))
       ((_ to_fp 11 53) x1_ack!3936)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3936)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3936)
                       ((_ to_fp 11 53) x0_ack!3943)))
       ((_ to_fp 11 53) x0_ack!3943)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3937)
                       ((_ to_fp 11 53) x1_ack!3936))
               ((_ to_fp 11 53) x1_ack!3936))
       ((_ to_fp 11 53) x2_ack!3937)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3937)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3937)
                       ((_ to_fp 11 53) x1_ack!3936)))
       ((_ to_fp 11 53) x1_ack!3936)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3936)
                    ((_ to_fp 11 53) x0_ack!3943))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3937)
                    ((_ to_fp 11 53) x1_ack!3936))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3941) ((_ to_fp 11 53) b_ack!3942))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3941) ((_ to_fp 11 53) x0_ack!3943))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3942) ((_ to_fp 11 53) x2_ack!3937))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3941) ((_ to_fp 11 53) b_ack!3942))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3941) ((_ to_fp 11 53) x0_ack!3943))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3941) ((_ to_fp 11 53) x1_ack!3936))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3942) ((_ to_fp 11 53) x0_ack!3943))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3942) ((_ to_fp 11 53) x1_ack!3936))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3936)
                    ((_ to_fp 11 53) x0_ack!3943))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!3940)
                           ((_ to_fp 11 53) y1_ack!3939))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3937)
                                   ((_ to_fp 11 53) x1_ack!3936)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!3939)
                           ((_ to_fp 11 53) y0_ack!3938))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3936)
                                   ((_ to_fp 11 53) x0_ack!3943)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!3937)
                                   ((_ to_fp 11 53) x1_ack!3936))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!3936)
                                   ((_ to_fp 11 53) x0_ack!3943))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
  (FPCHECK_FDIV_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3936)
                    ((_ to_fp 11 53) x0_ack!3943))
            a!4)
    #x4008000000000000))))

(check-sat)
(exit)
