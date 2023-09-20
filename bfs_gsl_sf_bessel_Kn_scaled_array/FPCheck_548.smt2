(declare-fun a_ack!2146 () (_ BitVec 32))
(declare-fun b_ack!2144 () (_ BitVec 32))
(declare-fun c_ack!2145 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!2146 #x00000000)))
(assert (not (bvslt b_ack!2144 a_ack!2146)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2145) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 b_ack!2144))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2145) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2145) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2145) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!2145))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #xbc7aff6f40020063)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x3cadb82af887f813)))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xbc7aff6f40020063)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #xbce15ca386b00802)))
                   (fp.add roundNearestTiesToEven
                           a!4
                           ((_ to_fp 11 53) #x3cadb82af887f813)))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x3d15aeb434479fad)))
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #xbce15ca386b00802)))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    a!2)
            (fp.add roundNearestTiesToEven
                    a!7
                    ((_ to_fp 11 53) #xbd4d319102e9251a)))
    (fp.add roundNearestTiesToEven a!6 ((_ to_fp 11 53) #x3d15aeb434479fad)))))))))))

(check-sat)
(exit)
