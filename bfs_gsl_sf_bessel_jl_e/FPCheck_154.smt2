(declare-fun a_ack!564 () (_ BitVec 32))
(declare-fun b_ack!563 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_cos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_sin ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!564 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!563) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!563) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!564)))
(assert (not (= #x00000001 a_ack!564)))
(assert (= #x00000002 a_ack!564))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!563) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!563))
            ((_ to_fp 11 53) #x2020000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!563))
            ((_ to_fp 11 53) #x3ff4cccccccccccd))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) b_ack!563)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!3 (fp.abs (fp.div roundNearestTiesToEven
                           (CF_cos b_ack!563)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!563)
                                   ((_ to_fp 11 53) b_ack!563))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   (CF_sin b_ack!563))
                           ((_ to_fp 11 53) b_ack!563))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 (CF_sin b_ack!563))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (CF_cos b_ack!563))
                           ((_ to_fp 11 53) b_ack!563)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.add roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   a!3))))
      (a!6 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.abs (fp.div roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) b_ack!563))))))
  (FPCHECK_FADD_OVERFLOW a!4 a!6)))))

(check-sat)
(exit)
