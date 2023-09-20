(declare-fun x1_ack!6751 () (_ BitVec 64))
(declare-fun x0_ack!6758 () (_ BitVec 64))
(declare-fun x2_ack!6752 () (_ BitVec 64))
(declare-fun b_ack!6757 () (_ BitVec 64))
(declare-fun a_ack!6756 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6753 () (_ BitVec 64))
(declare-fun y1_ack!6754 () (_ BitVec 64))
(declare-fun y2_ack!6755 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6758) ((_ to_fp 11 53) x1_ack!6751)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6751) ((_ to_fp 11 53) x2_ack!6752)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6751)
                       ((_ to_fp 11 53) x0_ack!6758))
               ((_ to_fp 11 53) x0_ack!6758))
       ((_ to_fp 11 53) x1_ack!6751)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6751)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6751)
                       ((_ to_fp 11 53) x0_ack!6758)))
       ((_ to_fp 11 53) x0_ack!6758)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6752)
                       ((_ to_fp 11 53) x1_ack!6751))
               ((_ to_fp 11 53) x1_ack!6751))
       ((_ to_fp 11 53) x2_ack!6752)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6752)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6752)
                       ((_ to_fp 11 53) x1_ack!6751)))
       ((_ to_fp 11 53) x1_ack!6751)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6751)
                    ((_ to_fp 11 53) x0_ack!6758))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6752)
                    ((_ to_fp 11 53) x1_ack!6751))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6756) ((_ to_fp 11 53) b_ack!6757))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6756) ((_ to_fp 11 53) x0_ack!6758))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6757) ((_ to_fp 11 53) x2_ack!6752))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6756) ((_ to_fp 11 53) b_ack!6757))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6756) ((_ to_fp 11 53) x0_ack!6758))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6756) ((_ to_fp 11 53) x1_ack!6751)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6751) ((_ to_fp 11 53) a_ack!6756))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6757) ((_ to_fp 11 53) x1_ack!6751))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6757) ((_ to_fp 11 53) x2_ack!6752))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6752)
                    ((_ to_fp 11 53) x1_ack!6751))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6755)
                           ((_ to_fp 11 53) y1_ack!6754))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6752)
                                   ((_ to_fp 11 53) x1_ack!6751)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6754)
                           ((_ to_fp 11 53) y0_ack!6753))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6751)
                                   ((_ to_fp 11 53) x0_ack!6758)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6752)
                                   ((_ to_fp 11 53) x1_ack!6751))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6751)
                                   ((_ to_fp 11 53) x0_ack!6758)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6756)
                                   ((_ to_fp 11 53) x1_ack!6751))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6756)
                                   ((_ to_fp 11 53) x1_ack!6751)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6757)
                                   ((_ to_fp 11 53) x1_ack!6751))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6757)
                                   ((_ to_fp 11 53) x1_ack!6751))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd5555555555555)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6756)
                                   ((_ to_fp 11 53) x1_ack!6751))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!6757)
                                   ((_ to_fp 11 53) x1_ack!6751))))))
  (FPCHECK_FMUL_UNDERFLOW a!4 a!6))))

(check-sat)
(exit)
