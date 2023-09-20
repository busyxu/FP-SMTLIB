(declare-fun x1_ack!6288 () (_ BitVec 64))
(declare-fun x0_ack!6295 () (_ BitVec 64))
(declare-fun x2_ack!6289 () (_ BitVec 64))
(declare-fun b_ack!6294 () (_ BitVec 64))
(declare-fun a_ack!6293 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6290 () (_ BitVec 64))
(declare-fun y1_ack!6291 () (_ BitVec 64))
(declare-fun y2_ack!6292 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6295) ((_ to_fp 11 53) x1_ack!6288)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6288) ((_ to_fp 11 53) x2_ack!6289)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6288)
                       ((_ to_fp 11 53) x0_ack!6295))
               ((_ to_fp 11 53) x0_ack!6295))
       ((_ to_fp 11 53) x1_ack!6288)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6288)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6288)
                       ((_ to_fp 11 53) x0_ack!6295)))
       ((_ to_fp 11 53) x0_ack!6295)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6289)
                       ((_ to_fp 11 53) x1_ack!6288))
               ((_ to_fp 11 53) x1_ack!6288))
       ((_ to_fp 11 53) x2_ack!6289)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6289)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6289)
                       ((_ to_fp 11 53) x1_ack!6288)))
       ((_ to_fp 11 53) x1_ack!6288)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6288)
                    ((_ to_fp 11 53) x0_ack!6295))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6289)
                    ((_ to_fp 11 53) x1_ack!6288))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6293) ((_ to_fp 11 53) b_ack!6294))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6293) ((_ to_fp 11 53) x0_ack!6295))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6294) ((_ to_fp 11 53) x2_ack!6289))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6293) ((_ to_fp 11 53) b_ack!6294))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6293) ((_ to_fp 11 53) x0_ack!6295))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!6293) ((_ to_fp 11 53) x1_ack!6288)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6288) ((_ to_fp 11 53) a_ack!6293))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6294) ((_ to_fp 11 53) x1_ack!6288))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!6294) ((_ to_fp 11 53) x2_ack!6289))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6289)
                    ((_ to_fp 11 53) x1_ack!6288))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6292)
                           ((_ to_fp 11 53) y1_ack!6291))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6289)
                                   ((_ to_fp 11 53) x1_ack!6288)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6291)
                           ((_ to_fp 11 53) y0_ack!6290))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6288)
                                   ((_ to_fp 11 53) x0_ack!6295)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6289)
                                   ((_ to_fp 11 53) x1_ack!6288))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6288)
                                   ((_ to_fp 11 53) x0_ack!6295))))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FDIV_ACCURACY
    a!4
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4008000000000000)
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6289)
                    ((_ to_fp 11 53) x1_ack!6288)))))))

(check-sat)
(exit)
