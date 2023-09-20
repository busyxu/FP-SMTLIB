(declare-fun x1_ack!6318 () (_ BitVec 64))
(declare-fun x0_ack!6325 () (_ BitVec 64))
(declare-fun x2_ack!6319 () (_ BitVec 64))
(declare-fun b_ack!6324 () (_ BitVec 64))
(declare-fun a_ack!6323 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!6320 () (_ BitVec 64))
(declare-fun y1_ack!6321 () (_ BitVec 64))
(declare-fun y2_ack!6322 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!6325) ((_ to_fp 11 53) x1_ack!6318)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!6318) ((_ to_fp 11 53) x2_ack!6319)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6318)
                       ((_ to_fp 11 53) x0_ack!6325))
               ((_ to_fp 11 53) x0_ack!6325))
       ((_ to_fp 11 53) x1_ack!6318)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!6318)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!6318)
                       ((_ to_fp 11 53) x0_ack!6325)))
       ((_ to_fp 11 53) x0_ack!6325)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6319)
                       ((_ to_fp 11 53) x1_ack!6318))
               ((_ to_fp 11 53) x1_ack!6318))
       ((_ to_fp 11 53) x2_ack!6319)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!6319)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!6319)
                       ((_ to_fp 11 53) x1_ack!6318)))
       ((_ to_fp 11 53) x1_ack!6318)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6318)
                    ((_ to_fp 11 53) x0_ack!6325))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!6319)
                    ((_ to_fp 11 53) x1_ack!6318))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!6323) ((_ to_fp 11 53) b_ack!6324))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6323) ((_ to_fp 11 53) x0_ack!6325))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!6324) ((_ to_fp 11 53) x2_ack!6319))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!6323) ((_ to_fp 11 53) b_ack!6324))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!6323) ((_ to_fp 11 53) x0_ack!6325))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!6323) ((_ to_fp 11 53) x1_ack!6318))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!6324) ((_ to_fp 11 53) x0_ack!6325))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!6324) ((_ to_fp 11 53) x1_ack!6318)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!6318) ((_ to_fp 11 53) b_ack!6324))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!6318)
                    ((_ to_fp 11 53) x0_ack!6325))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!6322)
                           ((_ to_fp 11 53) y1_ack!6321))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6319)
                                   ((_ to_fp 11 53) x1_ack!6318)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!6321)
                           ((_ to_fp 11 53) y0_ack!6320))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6318)
                                   ((_ to_fp 11 53) x0_ack!6325)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!6319)
                                   ((_ to_fp 11 53) x1_ack!6318))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6318)
                                   ((_ to_fp 11 53) x0_ack!6325)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6323)
                                   ((_ to_fp 11 53) x0_ack!6325))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6323)
                                   ((_ to_fp 11 53) x0_ack!6325)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6318)
                                   ((_ to_fp 11 53) x0_ack!6325))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6318)
                                   ((_ to_fp 11 53) x0_ack!6325))))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6323)
                                   ((_ to_fp 11 53) x0_ack!6325))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6318)
                                   ((_ to_fp 11 53) x0_ack!6325))))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6318)
                                   ((_ to_fp 11 53) x0_ack!6325))
                           a!4)
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y1_ack!6321)
                                   ((_ to_fp 11 53) y0_ack!6320))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6318)
                                   ((_ to_fp 11 53) x0_ack!6325)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!6323)
                                   ((_ to_fp 11 53) x0_ack!6325))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!6318)
                                   ((_ to_fp 11 53) x0_ack!6325))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y0_ack!6320) a!7)
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!9))))))))

(check-sat)
(exit)
