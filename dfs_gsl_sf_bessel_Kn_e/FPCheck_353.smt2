(declare-fun b_ack!467 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!467) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) b_ack!467))
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
(let ((a!8 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #xbd4d319102e9251a)))
                   (fp.add roundNearestTiesToEven
                           a!6
                           ((_ to_fp 11 53) #x3d15aeb434479fad)))))
(let ((a!9 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           (fp.add roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x3d856b2c54b23e51)))
                   (fp.add roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #xbd4d319102e9251a)))))
(let ((a!10 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #xbdc15d530f529e11)))
                    (fp.add roundNearestTiesToEven
                            a!8
                            ((_ to_fp 11 53) #x3d856b2c54b23e51)))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!10
                                    ((_ to_fp 11 53) #x3dffb014035fe5c4)))
                    (fp.add roundNearestTiesToEven
                            a!9
                            ((_ to_fp 11 53) #xbdc15d530f529e11)))))
(let ((a!12 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #xbe40afa9d3cdef4f)))
                    (fp.add roundNearestTiesToEven
                            a!10
                            ((_ to_fp 11 53) #x3dffb014035fe5c4)))))
(let ((a!13 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!12
                                    ((_ to_fp 11 53) #x3e850b0771f4ea8b)))
                    (fp.add roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #xbe40afa9d3cdef4f)))))
(let ((a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #xbed0d595dd239ad5)))
                    (fp.add roundNearestTiesToEven
                            a!12
                            ((_ to_fp 11 53) #x3e850b0771f4ea8b)))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3f22ef1bcd47bec8)))
                    (fp.add roundNearestTiesToEven
                            a!13
                            ((_ to_fp 11 53) #xbed0d595dd239ad5)))))
(let ((a!16 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #xbf82ca43e2075142)))
                    (fp.add roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x3f22ef1bcd47bec8)))))
  (FPCHECK_FDIV_ACCURACY
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff4000000000000)
            (fp.add roundNearestTiesToEven
                    a!16
                    ((_ to_fp 11 53) #xbf789d425fd7dd93)))
    #x7ff8000000000001))))))))))))))))))

(check-sat)
(exit)
