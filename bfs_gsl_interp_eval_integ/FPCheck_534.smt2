(declare-fun x1_ack!6721 () (_ BitVec 64))
(declare-fun x0_ack!6728 () (_ BitVec 64))
(declare-fun x2_ack!6722 () (_ BitVec 64))
(declare-fun b_ack!6727 () (_ BitVec 64))
(declare-fun a_ack!6726 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6723 () (_ BitVec 64))
(declare-fun y1_ack!6724 () (_ BitVec 64))
(declare-fun y2_ack!6725 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6728) ((_ to_fp 11 53) x1_ack!6721)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6721) ((_ to_fp 11 53) x2_ack!6722)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6721)
                       ((_ to_fp 11 53) x0_ack!6728))
               ((_ to_fp 11 53) x0_ack!6728))
       ((_ to_fp 11 53) x1_ack!6721)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6721)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6721)
                       ((_ to_fp 11 53) x0_ack!6728)))
       ((_ to_fp 11 53) x0_ack!6728)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6722)
                       ((_ to_fp 11 53) x1_ack!6721))
               ((_ to_fp 11 53) x1_ack!6721))
       ((_ to_fp 11 53) x2_ack!6722)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6722)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6722)
                       ((_ to_fp 11 53) x1_ack!6721)))
       ((_ to_fp 11 53) x1_ack!6721)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6721)
                    ((_ to_fp 11 53) x0_ack!6728))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6722)
                    ((_ to_fp 11 53) x1_ack!6721))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6726) ((_ to_fp 11 53) b_ack!6727))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6726) ((_ to_fp 11 53) x0_ack!6728))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6727) ((_ to_fp 11 53) x2_ack!6722))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6726) ((_ to_fp 11 53) b_ack!6727))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6726) ((_ to_fp 11 53) x0_ack!6728))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6726) ((_ to_fp 11 53) x1_ack!6721))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6727) ((_ to_fp 11 53) x0_ack!6728))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6727) ((_ to_fp 11 53) x1_ack!6721)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6721) ((_ to_fp 11 53) b_ack!6727))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6721)
                    ((_ to_fp 11 53) x0_ack!6728))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6722)
                    ((_ to_fp 11 53) x1_ack!6721))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6725)
                           ((_ to_fp 11 53) y1_ack!6724))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6722)
                                   ((_ to_fp 11 53) x1_ack!6721)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6724)
                           ((_ to_fp 11 53) y0_ack!6723))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6721)
                                   ((_ to_fp 11 53) x0_ack!6728)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6722)
                                   ((_ to_fp 11 53) x1_ack!6721))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6721)
                                   ((_ to_fp 11 53) x0_ack!6728))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FADD_UNDERFLOW #x0000000000000000 a!4))))

(check-sat)
(exit)
