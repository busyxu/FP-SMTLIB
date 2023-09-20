(declare-fun a_ack!662 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!662) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!662) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!662) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!662) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!662) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) a_ack!662))
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
(let ((a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff4000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #xbf789d425fd7dd93)))
                    ((_ to_fp 11 53) #x7ff8000000000001))))
  (not (fp.eq a!17 ((_ to_fp 11 53) #x0000000000000000)))))))))))))))))))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) a_ack!662))
       ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x8000000000000000)
               ((_ to_fp 11 53) a_ack!662))
       ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) a_ack!662))
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
(let ((a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff4000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #xbf789d425fd7dd93)))
                    ((_ to_fp 11 53) #x7ff8000000000001))))
  (not (fp.lt (fp.abs a!17) ((_ to_fp 11 53) #x5fe9999999999999)))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) a_ack!662))
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
(let ((a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff4000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #xbf789d425fd7dd93)))
                    ((_ to_fp 11 53) #x7ff8000000000001))))
(let ((a!18 (fp.gt (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!662))
                           (CF_log (fp.abs a!17)))
                   ((_ to_fp 11 53) #x40862e2e8418f241))))
  (not a!18))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) a_ack!662))
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
(let ((a!17 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff4000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!16
                                    ((_ to_fp 11 53) #xbf789d425fd7dd93)))
                    ((_ to_fp 11 53) #x7ff8000000000001))))
(let ((a!18 (fp.lt (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!662))
                           (CF_log (fp.abs a!17)))
                   ((_ to_fp 11 53) #xc086231762997524))))
  (not a!18))))))))))))))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) a_ack!662))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!23 (fp.sub roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            ((_ to_fp 11 53) a_ack!662))
                    (CF_floor (fp.sub roundNearestTiesToEven
                                      ((_ to_fp 11 53) #x8000000000000000)
                                      ((_ to_fp 11 53) a_ack!662))))))
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
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!26 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #xbc7aff6f40020063))))
      (a!27 (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    a!26
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3c7aff6f40020063)))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cadb82af887f813))))
      (a!28 (fp.add roundNearestTiesToEven
                    a!27
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!4)
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3cadb82af887f813))))
      (a!31 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!4
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3cadb82af887f813)))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           a!5
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #xbc7aff6f40020063)))
                   ((_ to_fp 11 53) #xbce15ca386b00802)))
      (a!29 (fp.add roundNearestTiesToEven
                    (fp.abs a!5)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!3
                                    ((_ to_fp 11 53) #xbc7aff6f40020063))))))
(let ((a!7 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!4
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cadb82af887f813))))
      (a!30 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!6))))
(let ((a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           a!7
                           ((_ to_fp 11 53) #x3d15aeb434479fad))))
      (a!32 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!28
                            (fp.add roundNearestTiesToEven
                                    a!29
                                    ((_ to_fp 11 53) #x3ce15ca386b00802)))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!30 a!31)
                            ((_ to_fp 11 53) #x3d15aeb434479fad)))))
(let ((a!9 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven a!8 a!6)
                           ((_ to_fp 11 53) #xbd4d319102e9251a))))
      (a!33 (fp.add roundNearestTiesToEven
                    a!32
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!8)
                                    (fp.abs a!6))
                            ((_ to_fp 11 53) #x3d4d319102e9251a)))))
(let ((a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!9
                            (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3d15aeb434479fad)))
                    ((_ to_fp 11 53) #x3d856b2c54b23e51)))
      (a!34 (fp.add roundNearestTiesToEven
                    (fp.abs a!9)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!7
                                    ((_ to_fp 11 53) #x3d15aeb434479fad))))))
(let ((a!11 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!10)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!8 a!6)
                            ((_ to_fp 11 53) #xbd4d319102e9251a))))
      (a!35 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!10))))
(let ((a!12 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            a!11
                            ((_ to_fp 11 53) #xbdc15d530f529e11))))
      (a!36 (fp.add roundNearestTiesToEven
                    a!35
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!8 a!6)
                                    ((_ to_fp 11 53) #xbd4d319102e9251a))))))
(let ((a!13 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!12 a!10)
                            ((_ to_fp 11 53) #x3dffb014035fe5c4))))
      (a!37 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!33
                            (fp.add roundNearestTiesToEven
                                    a!34
                                    ((_ to_fp 11 53) #x3d856b2c54b23e51)))
                    (fp.add roundNearestTiesToEven
                            a!36
                            ((_ to_fp 11 53) #x3dc15d530f529e11)))))
(let ((a!14 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!13
                            (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #xbdc15d530f529e11)))
                    ((_ to_fp 11 53) #xbe40afa9d3cdef4f)))
      (a!38 (fp.add roundNearestTiesToEven
                    a!37
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!12)
                                    (fp.abs a!10))
                            ((_ to_fp 11 53) #x3dffb014035fe5c4))))
      (a!39 (fp.add roundNearestTiesToEven
                    (fp.abs a!13)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!11
                                    ((_ to_fp 11 53) #xbdc15d530f529e11))))))
(let ((a!15 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!14)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!12 a!10)
                            ((_ to_fp 11 53) #x3dffb014035fe5c4))))
      (a!40 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!14))))
(let ((a!16 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            a!15
                            ((_ to_fp 11 53) #x3e850b0771f4ea8b))))
      (a!41 (fp.add roundNearestTiesToEven
                    a!40
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!12 a!10)
                                    ((_ to_fp 11 53) #x3dffb014035fe5c4))))))
(let ((a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!16 a!14)
                            ((_ to_fp 11 53) #xbed0d595dd239ad5))))
      (a!42 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!38
                            (fp.add roundNearestTiesToEven
                                    a!39
                                    ((_ to_fp 11 53) #x3e40afa9d3cdef4f)))
                    (fp.add roundNearestTiesToEven
                            a!41
                            ((_ to_fp 11 53) #x3e850b0771f4ea8b)))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3e850b0771f4ea8b)))
                    ((_ to_fp 11 53) #x3f22ef1bcd47bec8)))
      (a!43 (fp.add roundNearestTiesToEven
                    a!42
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!16)
                                    (fp.abs a!14))
                            ((_ to_fp 11 53) #x3ed0d595dd239ad5))))
      (a!44 (fp.add roundNearestTiesToEven
                    (fp.abs a!17)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!15
                                    ((_ to_fp 11 53) #x3e850b0771f4ea8b))))))
(let ((a!19 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!18)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!16 a!14)
                            ((_ to_fp 11 53) #xbed0d595dd239ad5))))
      (a!45 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!18))))
(let ((a!20 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #xbf82ca43e2075142)))
                    a!18))
      (a!46 (fp.add roundNearestTiesToEven
                    a!45
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!16 a!14)
                                    ((_ to_fp 11 53) #xbed0d595dd239ad5)))))
      (a!48 (fp.abs (fp.mul roundNearestTiesToEven
                            a!2
                            (fp.add roundNearestTiesToEven
                                    a!19
                                    ((_ to_fp 11 53) #xbf82ca43e2075142))))))
(let ((a!21 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            ((_ to_fp 11 53) #x3ff4000000000000)
                            (fp.add roundNearestTiesToEven
                                    a!20
                                    ((_ to_fp 11 53) #xbf789d425fd7dd93)))
                    ((_ to_fp 11 53) #x7ff8000000000001)))
      (a!47 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!43
                            (fp.add roundNearestTiesToEven
                                    a!44
                                    ((_ to_fp 11 53) #x3f22ef1bcd47bec8)))
                    (fp.add roundNearestTiesToEven
                            a!46
                            ((_ to_fp 11 53) #x3f82ca43e2075142)))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (CF_floor (fp.sub roundNearestTiesToEven
                                      ((_ to_fp 11 53) #x8000000000000000)
                                      ((_ to_fp 11 53) a_ack!662)))
                    (CF_floor (CF_log (fp.abs a!21)))))
      (a!24 (fp.sub roundNearestTiesToEven
                    (CF_log (fp.abs a!21))
                    (CF_floor (CF_log (fp.abs a!21)))))
      (a!49 (fp.add roundNearestTiesToEven
                    a!47
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!48 (fp.abs a!18))
                            ((_ to_fp 11 53) #x3f789d425fd7dd93)))))
(let ((a!25 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_exp a!22)
                            (CF_exp (fp.add roundNearestTiesToEven a!23 a!24)))
                    ((_ to_fp 11 53) #x4000000000000000)))
      (a!50 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cb0000000000000)
                                    a!49)
                            ((_ to_fp 11 53) #x3c7aff6f40020063))
                    ((_ to_fp 11 53) #x3cb0000000000000))))
(let ((a!51 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven
                                    a!50
                                    ((_ to_fp 11 53) #x7ff8000000000001))
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3cc0000000000000)
                                    (fp.abs a!21)))
                    a!21)))
(let ((a!52 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (CF_exp a!22)
                            (CF_exp (fp.add roundNearestTiesToEven a!23 a!24)))
                    (fp.abs a!51))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven a!25 ((_ to_fp 11 53) #x3cb0000000000000))
    a!52)))))))))))))))))))))))))))

(check-sat)
(exit)
