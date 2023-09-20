(declare-fun x1_ack!5288 () (_ BitVec 64))
(declare-fun x0_ack!5295 () (_ BitVec 64))
(declare-fun x2_ack!5289 () (_ BitVec 64))
(declare-fun b_ack!5294 () (_ BitVec 64))
(declare-fun a_ack!5293 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5290 () (_ BitVec 64))
(declare-fun y1_ack!5291 () (_ BitVec 64))
(declare-fun y2_ack!5292 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5295) ((_ to_fp 11 53) x1_ack!5288)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5288) ((_ to_fp 11 53) x2_ack!5289)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5288)
                       ((_ to_fp 11 53) x0_ack!5295))
               ((_ to_fp 11 53) x0_ack!5295))
       ((_ to_fp 11 53) x1_ack!5288)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5288)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5288)
                       ((_ to_fp 11 53) x0_ack!5295)))
       ((_ to_fp 11 53) x0_ack!5295)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5289)
                       ((_ to_fp 11 53) x1_ack!5288))
               ((_ to_fp 11 53) x1_ack!5288))
       ((_ to_fp 11 53) x2_ack!5289)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5289)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5289)
                       ((_ to_fp 11 53) x1_ack!5288)))
       ((_ to_fp 11 53) x1_ack!5288)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5288)
                    ((_ to_fp 11 53) x0_ack!5295))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5289)
                    ((_ to_fp 11 53) x1_ack!5288))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5293) ((_ to_fp 11 53) b_ack!5294))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5293) ((_ to_fp 11 53) x0_ack!5295))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5294) ((_ to_fp 11 53) x2_ack!5289))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5293) ((_ to_fp 11 53) b_ack!5294))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5293) ((_ to_fp 11 53) x0_ack!5295))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5293) ((_ to_fp 11 53) x1_ack!5288)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5288) ((_ to_fp 11 53) a_ack!5293))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5294) ((_ to_fp 11 53) x1_ack!5288))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5294) ((_ to_fp 11 53) x2_ack!5289)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5289)
                    ((_ to_fp 11 53) x1_ack!5288))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5293)
                       ((_ to_fp 11 53) x1_ack!5288))
               ((_ to_fp 11 53) x1_ack!5288))
       ((_ to_fp 11 53) a_ack!5293)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5293)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5293)
                       ((_ to_fp 11 53) x1_ack!5288)))
       ((_ to_fp 11 53) x1_ack!5288)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5292)
                           ((_ to_fp 11 53) y1_ack!5291))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5289)
                                   ((_ to_fp 11 53) x1_ack!5288)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5291)
                           ((_ to_fp 11 53) y0_ack!5290))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5288)
                                   ((_ to_fp 11 53) x0_ack!5295)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5289)
                                   ((_ to_fp 11 53) x1_ack!5288))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5288)
                                   ((_ to_fp 11 53) x0_ack!5295))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3fd5555555555555
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
