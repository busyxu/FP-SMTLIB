(declare-fun b_ack!383 () (_ BitVec 64))
(declare-fun a_ack!384 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!383) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!384) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!384)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!383))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!384)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!383))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!383)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!383)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) b_ack!383)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!384)
                                   a!2))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!383)))
                   a!2))
      (a!8 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cc0000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!384)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!6 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!384)
                                   (CF_floor a_ack!384))
                           a!5))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cc0000000000000)
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2)))
                   (fp.abs (fp.mul roundNearestTiesToEven a!4 a!6)))))
  (FPCHECK_FADD_OVERFLOW
    a!7
    (fp.mul roundNearestTiesToEven
            a!8
            (fp.abs (fp.mul roundNearestTiesToEven a!4 a!6)))))))))

(check-sat)
(exit)
