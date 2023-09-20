(declare-fun x1_ack!5784 () (_ BitVec 64))
(declare-fun x0_ack!5791 () (_ BitVec 64))
(declare-fun x2_ack!5785 () (_ BitVec 64))
(declare-fun b_ack!5790 () (_ BitVec 64))
(declare-fun a_ack!5789 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5786 () (_ BitVec 64))
(declare-fun y1_ack!5787 () (_ BitVec 64))
(declare-fun y2_ack!5788 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5791) ((_ to_fp 11 53) x1_ack!5784)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5784) ((_ to_fp 11 53) x2_ack!5785)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5784)
                       ((_ to_fp 11 53) x0_ack!5791))
               ((_ to_fp 11 53) x0_ack!5791))
       ((_ to_fp 11 53) x1_ack!5784)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5784)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5784)
                       ((_ to_fp 11 53) x0_ack!5791)))
       ((_ to_fp 11 53) x0_ack!5791)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5785)
                       ((_ to_fp 11 53) x1_ack!5784))
               ((_ to_fp 11 53) x1_ack!5784))
       ((_ to_fp 11 53) x2_ack!5785)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5785)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5785)
                       ((_ to_fp 11 53) x1_ack!5784)))
       ((_ to_fp 11 53) x1_ack!5784)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5784)
                    ((_ to_fp 11 53) x0_ack!5791))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5785)
                    ((_ to_fp 11 53) x1_ack!5784))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5789) ((_ to_fp 11 53) b_ack!5790))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5789) ((_ to_fp 11 53) x0_ack!5791))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5790) ((_ to_fp 11 53) x2_ack!5785))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5789) ((_ to_fp 11 53) b_ack!5790))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5789) ((_ to_fp 11 53) x0_ack!5791))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5789) ((_ to_fp 11 53) x1_ack!5784))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5790) ((_ to_fp 11 53) x0_ack!5791))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5790) ((_ to_fp 11 53) x1_ack!5784)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5784) ((_ to_fp 11 53) b_ack!5790))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5784)
                    ((_ to_fp 11 53) x0_ack!5791))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5788)
                           ((_ to_fp 11 53) y1_ack!5787))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5785)
                                   ((_ to_fp 11 53) x1_ack!5784)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5787)
                           ((_ to_fp 11 53) y0_ack!5786))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5784)
                                   ((_ to_fp 11 53) x0_ack!5791)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5785)
                                   ((_ to_fp 11 53) x1_ack!5784))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5784)
                                   ((_ to_fp 11 53) x0_ack!5791))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5784)
                                   ((_ to_fp 11 53) x0_ack!5791))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!5787)
                                   ((_ to_fp 11 53) y0_ack!5786))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5784)
                                   ((_ to_fp 11 53) x0_ack!5791)))
                   a!5)))
  (FPCHECK_FMUL_UNDERFLOW #x3fe0000000000000 a!6))))))

(check-sat)
(exit)
