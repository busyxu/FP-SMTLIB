(declare-fun x1_ack!7398 () (_ BitVec 64))
(declare-fun x0_ack!7405 () (_ BitVec 64))
(declare-fun x2_ack!7399 () (_ BitVec 64))
(declare-fun b_ack!7404 () (_ BitVec 64))
(declare-fun a_ack!7403 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!7400 () (_ BitVec 64))
(declare-fun y1_ack!7401 () (_ BitVec 64))
(declare-fun y2_ack!7402 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7405) ((_ to_fp 11 53) x1_ack!7398)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7398) ((_ to_fp 11 53) x2_ack!7399)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7398)
                       ((_ to_fp 11 53) x0_ack!7405))
               ((_ to_fp 11 53) x0_ack!7405))
       ((_ to_fp 11 53) x1_ack!7398)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7398)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7398)
                       ((_ to_fp 11 53) x0_ack!7405)))
       ((_ to_fp 11 53) x0_ack!7405)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7399)
                       ((_ to_fp 11 53) x1_ack!7398))
               ((_ to_fp 11 53) x1_ack!7398))
       ((_ to_fp 11 53) x2_ack!7399)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7399)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7399)
                       ((_ to_fp 11 53) x1_ack!7398)))
       ((_ to_fp 11 53) x1_ack!7398)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7398)
                    ((_ to_fp 11 53) x0_ack!7405))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7399)
                    ((_ to_fp 11 53) x1_ack!7398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7403) ((_ to_fp 11 53) b_ack!7404))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7403) ((_ to_fp 11 53) x0_ack!7405))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7404) ((_ to_fp 11 53) x2_ack!7399))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7403) ((_ to_fp 11 53) b_ack!7404))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7403) ((_ to_fp 11 53) x0_ack!7405))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7403) ((_ to_fp 11 53) x1_ack!7398))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7404) ((_ to_fp 11 53) x0_ack!7405))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!7404) ((_ to_fp 11 53) x1_ack!7398)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7398) ((_ to_fp 11 53) b_ack!7404))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7398)
                    ((_ to_fp 11 53) x0_ack!7405))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7399)
                    ((_ to_fp 11 53) x1_ack!7398))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!7402)
                           ((_ to_fp 11 53) y1_ack!7401))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7399)
                                   ((_ to_fp 11 53) x1_ack!7398)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!7401)
                           ((_ to_fp 11 53) y0_ack!7400))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7398)
                                   ((_ to_fp 11 53) x0_ack!7405)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!7399)
                                   ((_ to_fp 11 53) x1_ack!7398))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7398)
                                   ((_ to_fp 11 53) x0_ack!7405)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7398)
                                   ((_ to_fp 11 53) x1_ack!7398))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!7398)
                                   ((_ to_fp 11 53) x1_ack!7398)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7404)
                                   ((_ to_fp 11 53) x1_ack!7398))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7404)
                                   ((_ to_fp 11 53) x1_ack!7398))))))
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
                                   ((_ to_fp 11 53) x1_ack!7398)
                                   ((_ to_fp 11 53) x1_ack!7398))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!7404)
                                   ((_ to_fp 11 53) x1_ack!7398))))))
  (FPCHECK_FMUL_UNDERFLOW a!4 a!6))))

(check-sat)
(exit)
