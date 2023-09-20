(declare-fun a_ack!3656 () (_ BitVec 32))
(declare-fun b_ack!3654 () (_ BitVec 32))
(declare-fun c_ack!3655 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!3656 #x00000000)))
(assert (not (bvslt b_ack!3654 a_ack!3656)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3655) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!3654)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3655) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3655) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!3655) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3655) ((_ to_fp 11 53) #x4020000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4030000000000000)
                                   ((_ to_fp 11 53) c_ack!3655))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) #xbff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!5 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x0000000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x0000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!3
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3c7aff6f40020063))))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #xbc7aff6f40020063)))))
(let ((a!7 (fp.add roundNearestTiesToEven
                   a!4
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   (fp.abs a!6)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cadb82af887f813))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           a!2)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   a!6
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3cadb82af887f813))))
      (a!12 (fp.abs (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3cadb82af887f813)))))
(let ((a!9 (fp.add roundNearestTiesToEven
                   (fp.abs a!8)
                   (fp.abs (fp.add roundNearestTiesToEven
                                   a!5
                                   ((_ to_fp 11 53) #xbc7aff6f40020063)))))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!8
                            (fp.add roundNearestTiesToEven
                                    a!5
                                    ((_ to_fp 11 53) #xbc7aff6f40020063)))
                    ((_ to_fp 11 53) #xbce15ca386b00802))))
(let ((a!11 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!10)))
      (a!14 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!10)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven
                                    a!6
                                    ((_ to_fp 11 53) #x0000000000000000))
                            ((_ to_fp 11 53) #x3cadb82af887f813)))))
(let ((a!13 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!7
                            (fp.add roundNearestTiesToEven
                                    a!9
                                    ((_ to_fp 11 53) #x3ce15ca386b00802)))
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven a!11 a!12)
                            ((_ to_fp 11 53) #x3d15aeb434479fad))))
      (a!15 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            a!14
                            ((_ to_fp 11 53) #x3d15aeb434479fad)))))
(let ((a!16 (fp.add roundNearestTiesToEven
                    a!13
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!15)
                                    (fp.abs a!10))
                            ((_ to_fp 11 53) #x3d4d319102e9251a))))
      (a!17 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!15 a!10)
                            ((_ to_fp 11 53) #xbd4d319102e9251a)))))
(let ((a!18 (fp.add roundNearestTiesToEven
                    (fp.abs a!17)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3d15aeb434479fad)))))
      (a!19 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!17
                            (fp.add roundNearestTiesToEven
                                    a!14
                                    ((_ to_fp 11 53) #x3d15aeb434479fad)))
                    ((_ to_fp 11 53) #x3d856b2c54b23e51))))
(let ((a!20 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!19)))
      (a!23 (fp.sub roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!19)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!15 a!10)
                            ((_ to_fp 11 53) #xbd4d319102e9251a)))))
(let ((a!21 (fp.add roundNearestTiesToEven
                    a!20
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!15 a!10)
                                    ((_ to_fp 11 53) #xbd4d319102e9251a)))))
      (a!24 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            a!23
                            ((_ to_fp 11 53) #xbdc15d530f529e11)))))
(let ((a!22 (fp.add roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            a!16
                            (fp.add roundNearestTiesToEven
                                    a!18
                                    ((_ to_fp 11 53) #x3d856b2c54b23e51)))
                    (fp.add roundNearestTiesToEven
                            a!21
                            ((_ to_fp 11 53) #x3dc15d530f529e11))))
      (a!26 (fp.mul roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x4000000000000000)
                            a!2)
                    (fp.add roundNearestTiesToEven
                            (fp.sub roundNearestTiesToEven a!24 a!19)
                            ((_ to_fp 11 53) #x3dffb014035fe5c4)))))
(let ((a!25 (fp.add roundNearestTiesToEven
                    a!22
                    (fp.add roundNearestTiesToEven
                            (fp.add roundNearestTiesToEven
                                    (fp.abs a!24)
                                    (fp.abs a!19))
                            ((_ to_fp 11 53) #x3dffb014035fe5c4))))
      (a!27 (fp.add roundNearestTiesToEven
                    (fp.abs a!26)
                    (fp.abs (fp.add roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #xbdc15d530f529e11)))))
      (a!28 (fp.add roundNearestTiesToEven
                    (fp.sub roundNearestTiesToEven
                            a!26
                            (fp.add roundNearestTiesToEven
                                    a!23
                                    ((_ to_fp 11 53) #xbdc15d530f529e11)))
                    ((_ to_fp 11 53) #xbe40afa9d3cdef4f))))
(let ((a!29 (fp.abs (fp.mul roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x4000000000000000)
                                    a!2)
                            a!28))))
(let ((a!30 (fp.add roundNearestTiesToEven
                    a!29
                    (fp.abs (fp.add roundNearestTiesToEven
                                    (fp.sub roundNearestTiesToEven a!24 a!19)
                                    ((_ to_fp 11 53) #x3dffb014035fe5c4))))))
  (FPCHECK_FADD_ACCURACY
    (fp.add roundNearestTiesToEven
            a!25
            (fp.add roundNearestTiesToEven
                    a!27
                    ((_ to_fp 11 53) #x3e40afa9d3cdef4f)))
    (fp.add roundNearestTiesToEven a!30 ((_ to_fp 11 53) #x3e850b0771f4ea8b))))))))))))))))))))

(check-sat)
(exit)
