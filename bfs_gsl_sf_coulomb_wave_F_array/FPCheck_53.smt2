(declare-fun d_ack!323 () (_ BitVec 64))
(declare-fun b_ack!322 () (_ BitVec 32))
(declare-fun a_ack!325 () (_ BitVec 64))
(declare-fun c_ack!324 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!323) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!322))
(assert (not (bvsle #x00000001 b_ack!322)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!325) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!324)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) c_ack!324))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x8000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.abs a!1))))))
  (not (fp.gt (fp.add roundNearestTiesToEven a!2 (fp.abs a!3))
              ((_ to_fp 11 53) #x40862e42fefa39ef))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) c_ack!324))
                   ((_ to_fp 11 53) #x400921fb54442d18))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x8000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!3 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3cb0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   (fp.abs a!1))))))
  (FPCHECK_FSUB_UNDERFLOW a!2 (fp.abs a!3)))))

(check-sat)
(exit)
