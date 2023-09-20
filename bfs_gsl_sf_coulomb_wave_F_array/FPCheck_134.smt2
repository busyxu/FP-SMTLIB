(declare-fun d_ack!855 () (_ BitVec 64))
(declare-fun b_ack!854 () (_ BitVec 32))
(declare-fun a_ack!857 () (_ BitVec 64))
(declare-fun c_ack!856 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!855) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!854))
(assert (not (bvsle #x00000001 b_ack!854)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!857) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!856)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3cb0000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40852429b6c30b05)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!856)
                                   ((_ to_fp 11 53) c_ack!856)))))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc093ac8e8ed4171b)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!856)
                                   ((_ to_fp 11 53) c_ack!856)))))
      (a!4 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x40881a9661d3b4d8)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4022000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!856)
                                   ((_ to_fp 11 53) c_ack!856))))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) c_ack!856)))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) c_ack!856)))))
  (FPCHECK_FSUB_OVERFLOW
    a!3
    (fp.mul roundNearestTiesToEven a!4 ((_ to_fp 11 53) c_ack!856))))))

(check-sat)
(exit)
