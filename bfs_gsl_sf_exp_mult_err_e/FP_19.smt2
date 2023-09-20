(declare-fun c_ack!362 () (_ BitVec 64))
(declare-fun a_ack!363 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!362) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!363) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!363) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!362))
       ((_ to_fp 11 53) #x5fe9999999999999)))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!362))
            ((_ to_fp 11 53) #x2003333333333333))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!363)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!362))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x40862e2e8418f241)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!363)
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!362))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #xc086231762997524)))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) c_ack!362))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!362)))
                   a!1)))
(let ((a!3 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!363)
                                   (CF_floor a_ack!363))
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!363)
                                   a!1))
                   a!3)))
(let ((a!5 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  a!4
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!5)))))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) c_ack!362))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!362)))
                   a!1)))
(let ((a!3 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!363)
                                   (CF_floor a_ack!363))
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!363)
                                   a!1))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   (fp.mul roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.eq a!5 ((_ to_fp 11 53) #x3cb0000000000000))))))))
(assert (let ((a!1 (CF_floor (CF_log (fp.abs ((_ to_fp 11 53) c_ack!362))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) c_ack!362)))
                   a!1)))
(let ((a!3 (CF_exp (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!363)
                                   (CF_floor a_ack!363))
                           a!2))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (CF_exp (fp.add roundNearestTiesToEven
                                   (CF_floor a_ack!363)
                                   a!1))
                   a!3)))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x4000000000000000))
                           ((_ to_fp 11 53) #x3cb0000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (fp.eq a!5
         (fp.mul roundNearestTiesToEven
                 a!4
                 ((_ to_fp 11 53) #x4000000000000000)))))))))

(check-sat)
(exit)
