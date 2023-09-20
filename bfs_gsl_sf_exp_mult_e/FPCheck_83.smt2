(declare-fun b_ack!295 () (_ BitVec 64))
(declare-fun a_ack!296 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!295) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!296) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!296) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!295))
       ((_ to_fp 11 53) #x5fe9999999999999)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!295))
            ((_ to_fp 11 53) #x2003333333333333))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!296)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!296)
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295))))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cc0000000000000)
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))))))
  (not (fp.eq a!3 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) b_ack!295)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!296)
                                   a!2))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295)))
                   a!2)))
(let ((a!6 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!296)
                                   (CF_floor a_ack!296))
                           a!5))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cc0000000000000)
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2)))
                   (fp.abs (fp.mul roundNearestTiesToEven a!4 a!6)))))
(let ((a!8 (fp.div roundNearestTiesToEven
                   a!7
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cc0000000000000)
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2))))))
  (fp.eq a!8 (fp.abs (fp.mul roundNearestTiesToEven a!4 a!6)))))))))
(assert (let ((a!1 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) b_ack!295)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff)))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!1
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!296)
                                   a!2))))
      (a!4 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295)))
                   a!2)))
(let ((a!5 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!296)
                                   (CF_floor a_ack!296))
                           a!4))))
(let ((a!6 (fp.eq (fp.abs (fp.abs (fp.mul roundNearestTiesToEven a!3 a!5)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!6))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295)))))
      (a!2 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295)))))
      (a!3 ((_ to_fp 11 53)
             roundNearestTiesToEven
             (ite (fp.geq ((_ to_fp 11 53) b_ack!295)
                          ((_ to_fp 11 53) #x0000000000000000))
                  #x00000001
                  #xffffffff))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   a!3
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!296)
                                   a!2))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295)))
                   a!2)))
(let ((a!6 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!296)
                                   (CF_floor a_ack!296))
                           a!5))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cc0000000000000)
                           (fp.add roundNearestTiesToEven a!1 (fp.abs a!2)))
                   (fp.abs (fp.mul roundNearestTiesToEven a!4 a!6)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!7
                 (fp.abs (fp.mul roundNearestTiesToEven a!4 a!6)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3cc0000000000000)
                 (fp.add roundNearestTiesToEven a!1 (fp.abs a!2)))))))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) b_ack!295))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven (CF_floor a_ack!296) a!1)
    #x3ff0000000000000)))

(check-sat)
(exit)
