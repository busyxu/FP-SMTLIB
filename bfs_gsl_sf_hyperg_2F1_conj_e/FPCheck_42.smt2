(declare-fun c_ack!270 () (_ BitVec 64))
(declare-fun d_ack!271 () (_ BitVec 64))
(declare-fun a_ack!272 () (_ BitVec 64))
(declare-fun b_ack!269 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!271))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!271))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!272))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!269))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!270) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!272)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!272)
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!269)
                           ((_ to_fp 11 53) b_ack!269)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!270)
                                   ((_ to_fp 11 53) #x0000000000000000))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3ff0000000000000
    (fp.mul roundNearestTiesToEven a!2 ((_ to_fp 11 53) d_ack!271))))))

(check-sat)
(exit)
