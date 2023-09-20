(declare-fun x1_ack!6783 () (_ BitVec 64))
(declare-fun x0_ack!6790 () (_ BitVec 64))
(declare-fun x2_ack!6784 () (_ BitVec 64))
(declare-fun b_ack!6789 () (_ BitVec 64))
(declare-fun a_ack!6788 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!6785 () (_ BitVec 64))
(declare-fun y1_ack!6786 () (_ BitVec 64))
(declare-fun y2_ack!6787 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6790) ((_ to_fp 11 53) x1_ack!6783)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6783) ((_ to_fp 11 53) x2_ack!6784)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6783)
                       ((_ to_fp 11 53) x0_ack!6790))
               ((_ to_fp 11 53) x0_ack!6790))
       ((_ to_fp 11 53) x1_ack!6783)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6783)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6783)
                       ((_ to_fp 11 53) x0_ack!6790)))
       ((_ to_fp 11 53) x0_ack!6790)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6784)
                       ((_ to_fp 11 53) x1_ack!6783))
               ((_ to_fp 11 53) x1_ack!6783))
       ((_ to_fp 11 53) x2_ack!6784)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6784)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6784)
                       ((_ to_fp 11 53) x1_ack!6783)))
       ((_ to_fp 11 53) x1_ack!6783)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6783)
                    ((_ to_fp 11 53) x0_ack!6790))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6784)
                    ((_ to_fp 11 53) x1_ack!6783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6788) ((_ to_fp 11 53) b_ack!6789))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6788) ((_ to_fp 11 53) x0_ack!6790))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6789) ((_ to_fp 11 53) x2_ack!6784))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6788) ((_ to_fp 11 53) b_ack!6789))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6788) ((_ to_fp 11 53) x0_ack!6790))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6788) ((_ to_fp 11 53) x1_ack!6783)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6783) ((_ to_fp 11 53) a_ack!6788))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6789) ((_ to_fp 11 53) x1_ack!6783))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6789) ((_ to_fp 11 53) x2_ack!6784))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6784)
                    ((_ to_fp 11 53) x1_ack!6783))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6787)
                           ((_ to_fp 11 53) y1_ack!6786))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6784)
                                   ((_ to_fp 11 53) x1_ack!6783)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6786)
                           ((_ to_fp 11 53) y0_ack!6785))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6783)
                                   ((_ to_fp 11 53) x0_ack!6790)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6784)
                                   ((_ to_fp 11 53) x1_ack!6783))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6783)
                                   ((_ to_fp 11 53) x0_ack!6790))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6784)
                                   ((_ to_fp 11 53) x1_ack!6783))))))
  (FPCHECK_FMUL_OVERFLOW #x3fd0000000000000 a!5)))))

(check-sat)
(exit)
